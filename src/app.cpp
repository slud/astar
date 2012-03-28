#include "app.h"
#include "console.h"


// TODO: Put it into settings.xml
const int c_BPP = 32;

CApplication::CApplication() :
	m_pDisplay(NULL),
	m_pVideoInfo(NULL),
	m_VideoFlags(0),
	m_Running(false)
{
}

CApplication::~CApplication()
{
	// This is handled by SDL itself.
	// SDL_Quit() does the job.

	//delete m_pDisplay;
	//m_pDisplay = NULL;
	//delete m_pVideoInfo;
	//m_pVideoInfo = NULL;
}

void CApplication::Start()
{
	m_Running = true;
	bool IsActive = true;

	if(Init() != e_Success)
	{
		CConsoleSingleton::Instance()->Transmit(CConsoleSingleton::e_cerr, "Init failed. Aborted!!!");
		// TODO: Low priority. Investigate this kind of flow.
		return;
	}
	

	// THIS IS THE MAIN LOOP
	// TODO: Is enum to bool fast enough?
	while( m_Running )
	{
		// No overhead from calling virtuals allowed here.
		// Only static code.
		while( SDL_PollEvent( &m_Event ) )
		{
			//events( &event );
		    switch( m_Event.type )
			{
			case SDL_ACTIVEEVENT:
			    /* Something's happend with our focus
			     * If we lost focus or we are iconified, we
			     * shouldn't draw the screen
			     */
			    if ( m_Event.active.gain == 0 )
				IsActive = false;
			    else
				IsActive = true;
			    break;
			case SDL_VIDEORESIZE:
			    /* handle resize event */
			    m_pDisplay = SDL_SetVideoMode( m_Event.resize.w, m_Event.resize.h, c_BPP, m_VideoFlags );
			    //if ( !surface )
			    //resizeWindow( m_Event.resize.w, m_Event.resize.h );
			    break;
			case SDL_KEYDOWN:
			    /* handle key presses */
			    //handleKeyPress( &event.key.keysym );
				switch ( m_Event.key.keysym.sym )
				{
				case SDLK_ESCAPE:
					/* ESC key was pressed */
					m_Running = false;
					break;
				case SDLK_F1:
					/* F1 key was pressed
					 * this toggles fullscreen mode
					 */
					SDL_WM_ToggleFullScreen( m_pDisplay );
					break;
				default:
					break;
				}
			    break;
			case SDL_QUIT:
				m_Running = false;
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

















