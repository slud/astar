#include "Assert.hpp" // "" makes it choose local file.
#include <iostream>
#include <cstdlib>

#ifdef _DEBUG

bool AS::CustomAssertFunction(bool cond, std::string const& descr, int line, std::string const& filename, bool* ignore)
{
    if(!cond)
    {
        std::cerr << "ASSERTION FAILED @ " << filename << ":" << line << ", " << descr << std::endl;
        abort();
    }
    
    return cond;
}

#endif
