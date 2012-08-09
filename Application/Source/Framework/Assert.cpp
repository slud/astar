#include "Assert.hpp" // "" makes it choose local file.
#include <iostream>
#include <cstdlib>
#include <fstream>


#ifdef _DEBUG1

namespace AS
{
	CDebugLog gDebugLog;

}

bool AS::CustomAssert(bool cond, std::string const& descr, std::string const& filename, int line, bool* ignore)
{
    if(!cond)
    {
		AS::gDebugLog.Subject() << "ASSERT[" << filename << ":" << line << "]: " << descr << std::endl;
		AS::gDebugLog.Close();
        abort();
    }
    
    return cond;
}

#endif
