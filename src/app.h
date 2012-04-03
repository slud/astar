#ifndef AS_APPLICATION_H
	#define AS_APPLICATION_H

// LICENSE

/**
 *  @file name
 *
 *  Some description.
 */

//INCLUDES

#include <boost/utility.hpp>

#include "WindowSystem.h"


/**
 *	Represents OS process + main window.
 */
class CApplicationSingleton : public boost::noncopyable // class is an aggregate like array and struct.
{
public:

// TYPES

// LIFECYCE

// OPERATORS

// METHODS

	static CApplicationSingleton& Instance()
	{
		static CApplicationSingleton Instance;
		return Instance;
	}

	/**
	 *	App start routine (process + GUI).
	 */
	void Start();

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS
	void Events();

// DATA

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

	CApplicationSingleton();
	~CApplicationSingleton();

// METHODS

	/**
	 *	Inits the application.
	 */
	EResult Init();

	void Shutdown();

	/**
	 *	App stop request.
	 *  This can be called only internally.
	 *  Somehow from within of the main loop.
	 */
	void Stop();

// DATA

	bool		    m_Running;
#if 0
	ERunningMode	m_eRunningMode;
#endif

};

// REFERENCES

#endif // AS_APPLICATION_H




