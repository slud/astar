#ifndef AS_APPLICATION_H
	#define AS_APPLICATION_H

// CApplication's fields are SDL specific so that is why
// we include this header.
#include "SDL.h"

/**
 *	Represents OS process + main window.
 */
class CApplication // class is an aggregate like array and struct.
{
public:

// TYPES

// LIFECYCE

	CApplication();
	~CApplication();

// OPERATORS

// METHODS

	/**
	 *	App start routine (process + GUI).
	 */
	void Start();

// MEMBERS

private:

// TYPES

	/**
	 *	Application's specific result values.
	 */
	enum EResult
	{
		e_Success = 0,
		e_InitFailure = 1
	};

	/**
	 *	State of an application.
	 */
	enum ERunningMode
	{
		e_Running,
		e_Stopped,
		e_Paused,
		e_Undefined
	};

// LIFECYCLE

	/**
	 * Private copy ctor.
	 */
	CApplication(CApplication const&);

// OPERATORS

	/**
	 *	Private assignment operator.
	 */
	// TODO: Should here be two versions of return value: with and without const?
	CApplication& operator=(CApplication const&);

// METHODS

	/**
	 *	Inits the application.
	 */
	EResult Init();

	// TODO: Can I put inline keyword both in method declaration and at the definition?

// MEMBERS

	ERunningMode			m_eRunningMode;
	SDL_Surface*			m_pDisplay;
	const SDL_VideoInfo*	m_pVideoInfo;
	int						m_VideoFlags;
};

#endif
