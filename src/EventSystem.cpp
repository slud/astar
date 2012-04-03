#include "EventSystem.h"

CEventSystemSingleton::CEventSystemSingleton()
{
}

CEventSystemSingleton::~CEventSystemSingleton()
{
}

CEventSystemSingleton::Event_T const& CEventSystemSingleton::GetEvent()
{
	return m_Event;
}

bool CEventSystemSingleton::GetSystemEvent()
{
	bool result = false;
	SDL_Event Event;
	result = SDL_PollEvent( &Event );
	if(result)
	{
		SetEvent(Event);
	}
	return result;
}

void CEventSystemSingleton::SetEvent(Event_T const& Event)
{
	m_Event = Event;
}


