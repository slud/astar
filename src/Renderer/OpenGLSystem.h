/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_OPENGL_SYSTEM_H
	#define AS_OPENGL_SYSTEM_H

// INCLUDES

#include "types.h"

/**
 *	Class description.
 */
class COpenGLSystemSingleton
{
public:

// TYPES

	enum EResult
	{
		e_Success = 0,
		e_InitFailure = 1
	};

// LIFECYCLE

// OPERATORS

// METHODS
	EResult Init();

	static COpenGLSystemSingleton& Instance()
	{
		static COpenGLSystemSingleton Instance;
		return Instance;
	}

	void Shutdown();

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

// OPERATORS

// METHODS

// DATA

};

// REFERENCES

#endif // AS_OPENGL_SYSTEM_H




