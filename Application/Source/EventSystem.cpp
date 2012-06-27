#include "EventSystem.h"

CEventSystem::CEventSystem()
{
}

CEventSystem::~CEventSystem()
{
}

bool CEventSystem::GetSystemEvent()
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

void CEventSystem::SubscribeForEvents(EventHandler const& delegate)
{
	m_EventHandlers.push_back(delegate);
}




