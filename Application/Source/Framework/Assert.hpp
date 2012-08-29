#ifndef AS_DEBUGGING_ASSERT_INCLUDE
    #define AS_DEBUGGING_ASSERT_INCLUDE

#ifdef _DEBUG1

#include "Utils.hpp"
#include <string>
#include <cstdio>
#include <fstream>

namespace AS
{
	namespace Debugging
	{
		class CDebugLog // Proxy
		{
		public:
			void Close();
			std::ofstream& Subject();
		private:
			bool Initialize();
			void PrintCurrentDateTime();
			void PrintRunMark();
			std::ofstream m_DebugLog;
		};
		extern bool CustomAssert(bool condition, std::string const& text, std::string const& file, int line, bool* ignore);
		extern void CustomTrace(std::string const& text, std::string const& file, int line);
	}
}

// Guarantees inlining :-)
// In C there is no bool type that is why there is a conversion to int.
#define AS_ASSERT(exp, description) \
    { \
        static bool ignoreAlways = false; \
        if(!ignoreAlways) \
        { \
			if(AS::Debugging::CustomAssert(static_cast<int>((exp)), (description), __FILE__, __LINE__, &ignoreAlways)) \
            { \
                /*_asm { int 3 }*/ \
            } \
        } \
    }

#define AS_TRACE(text) \
    { \
		AS::Debugging::CustomTrace(text, __FILE__, __LINE__); \
    }

#else // _DEBUG1

#define ASSERT(exp, description)

#define TRACE(text)

#endif // _DEBUG1

#endif // AS_DEBUGGING_ASSERT_INCLUDE
