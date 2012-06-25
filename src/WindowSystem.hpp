/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_WINDOW_SYSTEM_INCLUDE
	#define AS_WINDOW_SYSTEM_INCLUDE

// INCLUDES

#include "Framework/ASSDL.h"

/**
 *	Window + OGL + SDL.
 */
class CWindowSystem
{
public:

// TYPES

// LIFECYCLE

	CWindowSystem();

// OPERATORS

// METHODS

	void ProcessEvents(SDL_Event const&);

	void Shutdown();

	int Start();

	void SystemEvents();

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

private:

// TYPES

// LIFECYCLE

	CWindowSystem(CWindowSystem const&);
	~CWindowSystem();

// OPERATORS

	CWindowSystem& operator=(CWindowSystem const&);

// METHODS

	void zzz_Initialize();

	void zzz_SwitchToFullscreen();

// DATA

	SDL_Surface*			zzz_pDisplay;   // Memory managed by the SDL.
	const SDL_VideoInfo*	zzz_pVideoInfo; // Memory managed by the SDL.

	int						zzz_VideoFlags;

};

// REFERENCES

#endif // AS_WINDOW_SYSTEM_INCLUDE




