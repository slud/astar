/**
 *	@file app_events.cpp
 *
 *	This is a separate file for event handling.
 *	It'll change many times so it is in a separate translation unit.
 */


#include "app.h"
// Implicity includes eventy type.
#include "EventSystem.h"

void CApplicationSingleton::Events()
{
	CEventSystemSingleton::Event_T Event = CEventSystemSingleton::Instance().GetEvent();

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


