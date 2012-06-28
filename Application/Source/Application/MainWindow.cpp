#include "MainWindow.hpp"

#include "Common/Common.hpp"
#include "Framework/Assert.hpp"


// TODO: Read-in those values from an xml settings file.
const int cScreenWidth  = 800;
const int cScreenHeight = 450;
const int cBPP          = 32;

const char cVideoInitFailed[]  = "Video initialization failed.";
const char cVideoQueryFailed[] = "Video query failed.";
const char cCantSetVideoMode[] = "Can't set video mode.";


CMainWindow::CMainWindow() :
	m_pDisplay(nullptr),
	m_pVideoInfo(nullptr),
	m_VideoFlags(0) // m_VideoFlags is of type int.
{
}

CMainWindow::~CMainWindow()
{
}

void CMainWindow::Initialize()
{
    // Fetch the video info.
    m_pVideoInfo = SDL_GetVideoInfo();

	ASSERT(nullptr != m_pVideoInfo, SDL_GetError());

    /* The flags to pass to SDL_SetVideoMode */
    m_VideoFlags  = SDL_OPENGL;          /* Enable OpenGL in SDL */
    m_VideoFlags |= SDL_GL_DOUBLEBUFFER; /* Enable double buffering */
    m_VideoFlags |= SDL_HWPALETTE;       /* Store the palette in hardware */
    //m_VideoFlags |= SDL_RESIZABLE;       /* Enable window resizing */

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
	m_pDisplay = SDL_SetVideoMode(cScreenWidth, cScreenHeight, cBPP, m_VideoFlags);

	ASSERT(nullptr != m_pDisplay, cCantSetVideoMode);
}

// Try to optimise.
void CMainWindow::ProcessEvents(Event_T const& event)
{
	switch(event.type)
	{
		case SDL_KEYDOWN:
			switch(event.key.keysym.sym)
			{
				case SDLK_F1:
					// TODO: Make it safe switch. Check if all requirements were met before proceeding.
					SwitchToFullscreen();
					break;
				default:
					break;
			}
			break;
		default:
			break;
	}
}

void CMainWindow::Shutdown()
{
}

void CMainWindow::Start()
{
	Initialize();
}

void CMainWindow::SwitchToFullscreen()
{
	SDL_WM_ToggleFullScreen( m_pDisplay );
}


