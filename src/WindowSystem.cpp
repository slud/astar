#include "WindowSystem.h"
#include "state_manager.h"
#include "event_handler.h"
#include "EventSystem.h"

#include <cassert>

#include "console.h"


// TODO: Read-in those values from an xml settings file.
const int c_ScreenWidth = 800;
const int c_ScreenHeight = 450;
const int c_BPP = 32;

const char c_VideoInitFailed[] = "Video initialization failed.";
const char c_VideoQueryFailed[] = "Video query failed.";
const char c_CantSetVideoMode[] = "Can't set video mode.";


CWindowSystemSingleton::CWindowSystemSingleton() :
	m_pDisplay(NULL),
	m_pVideoInfo(NULL),
	m_VideoFlags(0)
{
}

// Try to optimise.
void CWindowSystemSingleton::Events()
{
	// TODO: I know it's an SDL dependency again, but no time to implement a new DirectInputSystem.
	CEventSystemSingleton::Event_T Event;
	// Get an event from the que.
	while( CEventSystemSingleton::Instance().GetEvent(Event, CEventSystemSingleton::e_WindowSystem) )
	{
		switch(Event.type)
		{
			case SDL_KEYDOWN:
				switch(Event.key.keysym.sym)
				{
					case SDLK_F1:
						SwitchToFulscreen();
						break;
					default:
						break;
				}
				break;
			default:
				break;

		}
		
	}	
}

CWindowSystemSingleton::EResult CWindowSystemSingleton::Init()
{
	// Leaving checks of returns because this code is executed only once.

    // Initialize SDL.
	if( SDL_Init(SDL_INIT_VIDEO) < 0 )
	{
		std::vector<const char*> vec(2);
		vec[0] = SDL_GetError();
		vec[1] = c_VideoInitFailed;
		CConsoleSingleton::Instance()->Transmit(CConsoleSingleton::e_cerr, vec);
		Shutdown();
		return e_InitFailure;
	}

    // Fetch the video info.
    m_pVideoInfo = SDL_GetVideoInfo();

	// If NULL would be the simple 0 it could zero-out the pointer
	// when one would type '=' instead of "==".
    if ( NULL == m_pVideoInfo )
	{
		std::vector<const char*> vec(2);
		vec[0] = SDL_GetError();
		vec[1] = c_VideoQueryFailed;
		CConsoleSingleton::Instance()->Transmit(CConsoleSingleton::e_cerr, vec);
		Shutdown();
		return e_InitFailure;
	}

    /* The flags to pass to SDL_SetVideoMode */
    m_VideoFlags  = SDL_OPENGL;          /* Enable OpenGL in SDL */
    m_VideoFlags |= SDL_GL_DOUBLEBUFFER; /* Enable double buffering */
    m_VideoFlags |= SDL_HWPALETTE;       /* Store the palette in hardware */
    m_VideoFlags |= SDL_RESIZABLE;       /* Enable window resizing */

    /* This checks to see if surfaces can be stored in memory */
    if(m_pVideoInfo->hw_available)
	{
		m_VideoFlags |= SDL_HWSURFACE;
	}
    else
	{
		m_VideoFlags |= SDL_SWSURFACE;
	}

    /* This checks if hardware blits can be done */
    if ( m_pVideoInfo->blit_hw )
	{
		m_VideoFlags |= SDL_HWACCEL;
	}

    /* Sets up OpenGL double buffering */
	// TODO: Why? We set this earlier in m_VideoFlags?
    SDL_GL_SetAttribute( SDL_GL_DOUBLEBUFFER, 1 );

    /* Get a SDL surface */
	m_pDisplay = SDL_SetVideoMode(c_ScreenWidth, c_ScreenHeight, c_BPP, m_VideoFlags);

	assert( m_pDisplay && c_CantSetVideoMode);
	
	return e_Success;
}

void CWindowSystemSingleton::SwitchToFullscreen()
{
	SDL_WM_ToggleFullScreen( m_pDisplay );
}

// Try to optimise.
void CWindowSystemSingleton::SystemEvents()
{
	typedef CMainWindowEventHandlerSingleton CASTS;

	// TODO: According to SDL docs a union type SDL_Event should be created here every time.
	SDL_Event Event;
	while( SDL_PollEvent( &Event ) )
	{
		// TODO: Depending on state call appropriate handler.
		switch(CASTS::Instance().GetCurrentState())
		{
			case CASTS::e_MainWindow:
				CMainWindowEventHandlerSingleton::Instance().operator()(Event);
				break;
			case CASTS::e_MainMenu:
				break;
			case CASTS::e_Edit:
				break;
			case CASTS::e_Playing:
				break;
			case CASTS::e_Paused:
				break;
			case CASTS::e_Quit:
				break;
			default:
				break;
		}
		
	}	
}





