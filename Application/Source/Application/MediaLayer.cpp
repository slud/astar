#include "MediaLayer.hpp"

AS::System::CMediaLayer::CMediaLayer()
{
}

AS::System::CMediaLayer::~CMediaLayer()
{
	SDL_Quit();
}

void AS::System::CMediaLayer::Events()
{
	register Event_T Event;

	SDL_PollEvent(&Event);

	std::list<SystemEventEventHandler>::const_iterator it;
	for(it = m_EventHandlers.begin(); it != m_EventHandlers.end(); it++ )
	{
		(*it)(Event);
	}
}

void AS::System::CMediaLayer::RegisterEventHandler(SystemEventEventHandler event)
{
	m_EventHandlers.push_back(event);
}

void AS::System::CMediaLayer::Attach()
{
	int result = SDL_Init(SDL_INIT_VIDEO);
}