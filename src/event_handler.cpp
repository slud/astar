#include "event_handler.h"
#include "EventSystem.h"

// TODO: Put it into settings.xml
const int c_BPP = 32;

CMainWindowEventHandlerSingleton::CMainWindowEventHandlerSingleton()
{
}

CMainWindowEventHandlerSingleton::~CMainWindowEventHandlerSingleton()
{
}

void CMainWindowEventHandlerSingleton::operator()(SDL_Event const& Event)
{
#if 0
	// Set a "reference" to a passed in event object.
	CEventHandler::operator(parEvent);
#endif

	// TODO: Code for handling any more priority events.

	// TODO: Code for handling MainWindow events.

	switch( Event.type )
	{
#if 0
		case SDL_ACTIVEEVENT:
			/* Something's happend with our focus
			 * If we lost focus or we are iconified, we
			 * shouldn't draw the screen
			 */
			if ( Event.active.gain == 0 )
			IsActive = false;
			else
			IsActive = true;
			break;
		case SDL_VIDEORESIZE:
			/* handle resize event */
			m_pDisplay = SDL_SetVideoMode( Event.resize.w, m_Event.resize.h, c_BPP, m_VideoFlags );
			//if ( !surface )
			//resizeWindow( m_Event.resize.w, m_Event.resize.h );
			break;
#endif
		case SDL_KEYDOWN:
			/* handle key presses */
			//handleKeyPress( &event.key.keysym );
			switch ( Event.key.keysym.sym )
			{
				case SDLK_ESCAPE:
					//m_Running = false;
					//CEventSystemSingleton::Event_T Event;
					
					//CEventSystemSingleton::AddEvent(Event, e_Application);
					break;
				case SDLK_F1:
					//SDL_WM_ToggleFullScreen( m_pDisplay );
					break;
				default:
					break;
			}
			break;
		case SDL_QUIT:
			//m_Running = false;
			break;
		default:
			break;
	}


	// TODO: Code for handling any low priority events.
}

