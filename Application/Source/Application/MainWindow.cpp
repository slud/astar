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


AS::System::CMainWindow::CMainWindow() :
	m_pDisplay(nullptr),
	m_pVideoInfo(nullptr),
	m_VideoFlags(0) // m_VideoFlags is of type int.
{
}

AS::System::CMainWindow::~CMainWindow()
{
}

void AS::System::CMainWindow::Close()
{
}

void AS::System::CMainWindow::Initialize()
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
void AS::System::CMainWindow::ProcessEvent(Event_T const& event)
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

void AS::System::CMainWindow::Show()
{
	Initialize();
}

void AS::System::CMainWindow::SwitchToFullscreen()
{
	//SDL_WM_ToggleFullScreen( m_pDisplay ); // Doesn't work on win7 pro x64

	// This is the fix from some SDL wiki.
	int flags = m_pDisplay->flags; /* Save the current flags in case toggling fails */
	m_pDisplay = SDL_SetVideoMode(0, 0, 0, m_pDisplay->flags ^ SDL_FULLSCREEN); /*Toggles FullScreen Mode */
	if(m_pDisplay == NULL) m_pDisplay = SDL_SetVideoMode(0, 0, 0, flags); /* If toggle FullScreen failed, then switch back */
	if(m_pDisplay == NULL) exit(1); /* If you can't switch back for some reason, then epic fail */
}



