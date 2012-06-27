#include "Assert.hpp" // "" makes it choose local file.
#include <iostream>
#include <cstdlib>
#include <fstream>

#ifdef _DEBUG

namespace AS
{
	class CDebugLog
	{
	public:
		operator std::ofstream&()
		{
			static bool initialised = false;
			if(!initialised)
			{
				m_DebugLog.open("Debug.txt", std::ios::out, std::ios::app );
				for(int i=0; i<8; i++ )
					m_DebugLog << "==========";
				m_DebugLog << std::endl;
				initialised = true;
			}
			return m_DebugLog;
		}
	private:
		std::ofstream m_DebugLog;

	} gDebugLog;
}

static bool Initialize()
{
	static bool initialised = false;
	if(!initialised)
	{
		AS::gDebugLog().open("Debug.txt", std::ios::out, std::ios::app );
		for(int i=0; i<8; i++ )
			AS::gDebugLog() << "==========";
		AS::gDebugLog() << std::endl;
	}
	return true;
}

bool AS::CustomAssert(bool cond, std::string const& descr, std::string const& filename, int line, bool* ignore)
{
    if(!cond)
    {
		AS::gDebugLog() << "ASSERT[" << filename << ":" << line << "]: " << descr << std::endl;
		AS::gDebugLog().close();
        abort();
    }
    
    return cond;
}

#endif
