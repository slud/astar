#include "Common/Common.hpp"
#include "Framework/Assert.hpp"
#include "WindowSystem.hpp"

#include "state_manager.h"
#include "event_handler.h"
#include "EventSystem.h"


// TODO: Read-in those values from an xml settings file.
const int c_ScreenWidth  = 800;
const int c_ScreenHeight = 450;
const int c_BPP          = 32;

const char c_VideoInitFailed[]  = "Video initialization failed.";
const char c_VideoQueryFailed[] = "Video query failed.";
const char c_CantSetVideoMode[] = "Can't set video mode.";


CWindowSystem::CWindowSystem() :
	zzz_pDisplay(nullptr),
	zzz_pVideoInfo(nullptr),
	zzz_VideoFlags(0) // zzz_VideoFlags is of type int.
{
}

CWindowSystem::~CWindowSystem()
{
}

// Try to optimise.
void CWindowSystem::ProcessEvents(SDL_Event const& event)
{
	// TODO: I know it's an SDL dependency again, but no time to implement a new DirectInputSystem.
	CEventSystemSingleton::Event_T Event = CEventSystemSingleton::Instance().GetEvent();
	// Get an event from the que.
	//while( CEventSystemSingleton::Instance().GetEvent(Event, CEventSystemSingleton::e_WindowSystem) )
	//{
		switch(Event.type)
		{
			case SDL_KEYDOWN:
				switch(Event.key.keysym.sym)
				{
					case SDLK_F1:
						SwitchToFullscreen();
						break;
					default:
						break;
				}
				break;
			default:
				break;

		}
		
	//}	
}

void CWindowSystem::Start()
{
	Initialize();
}


void CWindowSystem::zzz_Initialize()
{
	int result = 0;
	
	// Leaving checks of returns because this code is executed only once.

    // Initialize SDL.
	result = SDL_Init(SDL_INIT_VIDEO);

	ASSERT(result > 0, SDL_Get);

    // Fetch the video info.
    zzz_pVideoInfo = SDL_GetVideoInfo();

	// If NULL would be the simple 0 it could zero-out the pointer
	// when one would type '=' instead of "==".
    if ( NULL == zzz_pVideoInfo )
	{
		std::vector<const char*> vec(2);
		vec[0] = SDL_GetError();
		vec[1] = c_VideoQueryFailed;
		CConsoleSingleton::Instance()->Transmit(CConsoleSingleton::e_cerr, vec);
		Shutdown();
		return e_InitFailure;
	}

    /* The flags to pass to SDL_SetVideoMode */
    zzz_VideoFlags  = SDL_OPENGL;          /* Enable OpenGL in SDL */
    zzz_VideoFlags |= SDL_GL_DOUBLEBUFFER; /* Enable double buffering */
    zzz_VideoFlags |= SDL_HWPALETTE;       /* Store the palette in hardware */
    zzz_VideoFlags |= SDL_RESIZABLE;       /* Enable window resizing */

    /* This checks to see if surfaces can be stored in memory */
    if(zzz_pVideoInfo->hw_available)
	{
		zzz_VideoFlags |= SDL_HWSURFACE;
	}
    else
	{
		zzz_VideoFlags |= SDL_SWSURFACE;
	}

    /* This checks if hardware blits can be done */
    if ( zzz_pVideoInfo->blit_hw )
	{
		zzz_VideoFlags |= SDL_HWACCEL;
	}

    /* Sets up OpenGL double buffering */
	// TODO: Why? We set this earlier in zzz_VideoFlags?
    SDL_GL_SetAttribute( SDL_GL_DOUBLEBUFFER, 1 );

    /* Get a SDL surface */
	zzz_pDisplay = SDL_SetVideoMode(c_ScreenWidth, c_ScreenHeight, c_BPP, zzz_VideoFlags);

	ASSERT(zzz_pDisplay, c_CantSetVideoMode);
	
	return e_Success;
}

void CWindowSystem::zzz_SwitchToFullscreen()
{
	SDL_WM_ToggleFullScreen( zzz_pDisplay );
}

// Try to optimise.
void CWindowSystem::SystemEvents()
{
	typedef CApplicationStateManagerSingleton CASMS;

	// TODO: According to SDL docs a union type SDL_Event should be created here every time.
	SDL_Event Event;
	while( SDL_PollEvent( &Event ) )
	{
		// TODO: Depending on state call appropriate handler.
		switch(CASMS::Instance().GetCurrentState())
		{
			case CASMS::e_MainWindow:
				CMainWindowEventHandlerSingleton::Instance().operator()(Event);
				break;
			case CASMS::e_MainMenu:
				break;
			case CASMS::e_Edit:
				break;
			case CASMS::e_Playing:
				break;
			case CASMS::e_Paused:
				break;
			case CASMS::e_Quit:
				break;
			default:
				break;
		}
		
	}	
}

void CWindowSystem::Shutdown()
{
	SDL_Quit();
}





