/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_MAIN_WINDOW_INCLUDE
	#define AS_MAIN_WINDOW_INCLUDE

// INCLUDES

#include "Framework/ASSDL.hpp"

/**
 *	Window + OGL + SDL.
 */
class CMainWindow
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	friend CApplication::Initialize();

	void Shutdown();

	void Start();

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	virtual void ProcessEvents(Event_T const&);

// DATA

private:

// TYPES

// LIFECYCLE

	CMainWindow();
	CMainWindow(CMainWindow const&);
	~CMainWindow();

// OPERATORS

	CMainWindow& operator=(CMainWindow const&);

// METHODS

	void Initialize();

	void SwitchToFullscreen();

// DATA

	SDL_Surface*			m_pDisplay;   // Memory managed by the SDL.
	const SDL_VideoInfo*	m_pVideoInfo; // Memory managed by the SDL.

	int						m_VideoFlags;

};

// REFERENCES

#endif // AS_MAIN_WINDOW_INCLUDE




