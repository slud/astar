#include "Application.hpp"
#include "WindowSystem.hpp"

void CApplication::Loop()
{
	m_Running = true;

	while( m_Running )
	{
		register SDL_Event Event;
		SDL_PollEvent(&Event);
		
	}
}




