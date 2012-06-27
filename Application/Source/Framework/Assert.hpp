#ifndef AS_ASSERT_H
    #define AS_ASSERT_H

#ifdef _DEBUG

#include <string>
#include <cstdio>

namespace AS
{
    extern bool CustomAssertFunction(bool, std::string const&, int, std::string const&, bool*);
}

// Guarantees inlining :-)
// In C there is no bool type that is why there is a conversion to int.
#define ASSERT(exp, description) \
    { \
        static bool ignoreAlways = false; \
        if(!ignoreAlways) \
        { \
            if(AS::CustomAssertFunction(static_cast<int>((exp)), (description), __LINE__, __FILE__, &ignoreAlways)) \
            { \
                /*_asm { int 3 }*/ \
            } \
        } \
    }

#define TRACE(format, parameters) \
    { \
        fprintf(stdout, "TRACE: "); \
        fprintf(stdout, (format), (parameters)); \
        fprintf(stdout, "\n"); \
    }

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
