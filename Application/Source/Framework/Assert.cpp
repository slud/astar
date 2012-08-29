#include "Assert.hpp"
#include <iostream>
#include <cstdlib>
#include <fstream>
#include <ctime>

#ifdef _DEBUG1

namespace
{
	AS::Debugging::CDebugLog g_DebugLog;
}

void AS::Debugging::CDebugLog::Close()
{
	m_DebugLog.close();
}

std::ofstream& AS::Debugging::CDebugLog::Subject()
{
	static bool initialized;
	if(!initialized)
	{
		Initialize();
		initialized = true;
	}
	return m_DebugLog;
}

bool AS::Debugging::CDebugLog::Initialize()
{
	m_DebugLog.open("Debug.txt", std::ios::app );
	PrintRunMark();
	PrintCurrentDateTime();
	PrintRunMark();
	return true;
}

void AS::Debugging::CDebugLog::PrintCurrentDateTime()
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

void AS::Debugging::CDebugLog::PrintRunMark()
{
	if(m_DebugLog.is_open())
	{
		const size_t Dim = 82;
		char mark[Dim] = {0};
		for(int i=0; i<Dim; i++) mark[i] = '=';
		mark[Dim-2] = '\n';
		mark[Dim-1] = 0;
		m_DebugLog << mark;
	}
}

bool AS::Debugging::CustomAssert(bool condition, std::string const& text, std::string const& file, int line, bool* ignore)
{
    if(!condition)
    {
		g_DebugLog.Subject() << "ASSERT[" << file << ":" << line << "]: " << text << std::endl;
		g_DebugLog.Close();
        abort();
    }
    return condition;
}

void AS::Debugging::CustomTrace(std::string const& text, std::string const& file, int line)
{
	g_DebugLog.Subject() << "TRACE[" << file << ":" << line << "]: " << text << std::endl;
}

#endif // _DEBUG1
