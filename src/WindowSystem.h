/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_WINDOW_SYSTEM_H
	#define AS_WINDOW_SYSTEM_H

// INCLUDES

#include <boost/utility.hpp>

#include "SDL.h"

/**
 *	Main Window + OGL + SDL.
 */
class CWindowSystemSingleton : public boost::noncopyable
{
public:

// TYPES
	
	enum EResult
	{
		e_Success,
		e_InitFailure
	};

// LIFECYCLE

// OPERATORS

// METHODS

	static CWindowSystemSingleton& Instance()
	{
		static CWindowSystemSingleton Instance;
		return Instance;
	}

	void Events();
	
	EResult Init();

	void Shutdown();

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

	CWindowSystemSingleton();
	~CWindowSystemSingleton();

// OPERATORS

// METHODS

	void SwitchToFullscreen();

// DATA

	SDL_Surface*			m_pDisplay;
	const SDL_VideoInfo*	m_pVideoInfo;
	int						m_VideoFlags;

};

inline void CWindowSystemSingleton::Shutdown()
{
	SDL_Quit();
}

// REFERENCES

#endif // AS_WINDOW_SYSTEM_H




