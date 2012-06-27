#include "Assert.hpp" // "" makes it choose local file.
#include <iostream>
#include <cstdlib>
#include <fstream>

#ifdef _DEBUG

std::ofstream gAssertStream;

static bool Initialize()
{
	static bool initialised = false;
	if(!initialised)
	{
		gAssertStream.open("Assert.txt", std::ios::out, std::ios::app );
		for(int i=0; i<8; i++ )
			gAssertStream << "==========";
		gAssertStream << std::endl;
	}
	return true;
}

bool AS::CustomAssertFunction(bool cond, std::string const& descr, int line, std::string const& filename, bool* ignore)
{
    if(!cond)
    {
		static bool init = Initialize();
		gAssertStream << "ASSERTION FAILED @ " << filename << ":" << line << ", " << descr << std::endl;
		gAssertStream.close();
        abort();
    }
    
    return cond;
}

#endif
