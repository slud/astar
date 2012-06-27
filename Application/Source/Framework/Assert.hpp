#ifndef AS_ASSERT_H
    #define AS_ASSERT_H

#ifdef _DEBUG

#include <string>
#include <cstdio>
#include <fstream>

namespace AS
{
    extern bool CustomAssert(bool, std::string const&, std::string const&, int, bool*);
	class CDebugLog;
	extern CDebugLog gDebugLog;
}

// Guarantees inlining :-)
// In C there is no bool type that is why there is a conversion to int.
#define ASSERT(exp, description) \
    { \
        static bool ignoreAlways = false; \
        if(!ignoreAlways) \
        { \
            if(AS::CustomAssert(static_cast<int>((exp)), (description), __FILE__, __LINE__, &ignoreAlways)) \
            { \
                /*_asm { int 3 }*/ \
            } \
        } \
    }

#define TRACE(text) \
    { \
	std::ofstream out; \
		AS::gDebugLog << "TRACE[" << __FILE__ << ":" << __LINE__ << "]: " << text << std::endl; \
    }

/*
        fprintf(AS::gDebugLog(), "%s", "TRACE["); \
		fprintf(AS::gDebugLog(), "%s", __FILE__); \
		fprintf(AS::gDebugLog(), "%s", ":"); \
		fprintf(AS::gDebugLog(), "%d",__LINE__); \
		fprintf(AS::gDebugLog(), "%s", "]: "); \
		fprintf(AS::gDebugLog(), format, parameters); \
		fprintf(AS::gDebugLog(), "%s", "\n"); \
*/

/*
template<class T>
T& transmit(T const&)
{
    return T;
}
*/

#else

#define ASSERT(exp, description)

#define TRACE(format, parameters)

#endif // _DEBUG

#endif // AS_ASSERT_H
