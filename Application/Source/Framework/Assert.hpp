#ifndef AS_ASSERT_H
    #define AS_ASSERT_H

#ifdef _DEBUG

#include <string>
#include <cstdio>
#include <ctime>
#include <fstream>
#include <windows.h>

namespace AS
{
#ifndef AS_DEBUG_LOG_INCLUDE
    #define AS_DEBUG_LOG_INCLUDE

	class CDebugLog // Proxy
	{
	public:
		void Close()
		{
			m_DebugLog.close();
		}

		std::ofstream& Subject()
		{
			static bool initialized = Initialize();
			return m_DebugLog;
		}

	private:
		bool Initialize()
		{
			try
			{
				m_DebugLog.open("Debug.txt", std::ios::out, std::ios::app );
				PrintRunMark();
				PrintCurrentDateTime();
				PrintRunMark();
			}
			catch(...)
			{
				MessageBox(0, (LPCWSTR)L"Wszystko OK", (LPCWSTR)L"Ekran SDL", MB_OK);
			}

			return true;
		}

		void PrintCurrentDateTime()
		{
			if(m_DebugLog.is_open())
			{
				time_t now = time(0);
				tm local;
				local = *localtime(&now);
				char buf[80] = {0};
				strftime(buf, sizeof(buf), "%Y-%m-%d %X", &local);
				m_DebugLog << buf << std::endl;
			}
		}

		void PrintRunMark()
		{
			if(m_DebugLog.is_open())
			{
				//for(int i=0; i<8; i++ )
					//m_DebugLog << "==========";
				char mark[81] = {'='};
				mark[80] = '\n';
				m_DebugLog << mark;
				//m_DebugLog << std::endl;
			}
		}

		std::ofstream m_DebugLog;

	};

#endif // AS_DEBUG_LOG_INCLUDE

    extern bool CustomAssert(bool, std::string const&, std::string const&, int, bool*);
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
		AS::gDebugLog.Subject() << "TRACE[" << __FILE__ << ":" << __LINE__ << "]: " << text << std::endl; \
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
