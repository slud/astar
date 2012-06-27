/**
 *	@file app_events.cpp
 *
 *	This is a separate file for event handling.
 *	It'll change many times so it is in a separate translation unit.
 */


#include "Application.hpp"

void CApplication::Events()
{
	register Event_T Event;

	SDL_PollEvent(&Event);
	
	switch( Event.type )
	{
	case SDL_KEYDOWN:
		switch ( Event.key.keysym.sym )
		{
		case SDLK_ESCAPE:
			Stop();
			break;
		default:
			break;
		}
		break;
	case SDL_QUIT:
		break;
	default:
		break;
	}
}


