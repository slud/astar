#include "Application.h"
#include "Console.h"

CApplication::CApplication() :
	m_pDisplay(NULL),
	m_pVideoInfo(NULL),
	m_VideoFlags(0)
{
}

CApplication::~CApplication()
{
	//delete m_pDisplay;
	//m_pDisplay = NULL;
	
	//delete m_pVideoInfo;
	//m_pVideoInfo = NULL;
}

void CApplication::Start()
{
	m_eRunningMode = e_Running;

	if(Init() != e_Success)
	{
		CConsoleSingleton::Instance()->Transmit(CConsoleSingleton::e_cerr, "Init failed. Aborted!!!");
		return;
	}

	SDL_Event event;

	// TODO: Is enum fast enough?
	while( m_eRunningMode == e_Running )
	{
		// No virtuals allowed here.
		// Only static code.
		while( SDL_PollEvent( &event ) )
		{
			//events( &event );
		    switch( event.type )
			{
			case SDL_QUIT:
				m_eRunningMode = e_Stopped;
			    break;
			default:
			    break;
			}
		}
		// update();
		// render();
	}
	
	// cleanup();
	SDL_Quit();

	// Check for necessary subsystems.
	// Init all data.
	// Load resources
	// Start Engine.
	// Start game.
}

















