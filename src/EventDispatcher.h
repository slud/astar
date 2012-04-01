/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_EVENT_DISPATCHER_H
	#define AS_EVENT_DISPATCHER_H

// INCLUDES
#include "app.h"

/**
 *	Class description.
 */
class CEventDispatcherSingleton
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	void DispatchEvent(EEventType, Event);

// DATA

protected:

// TYPES

	EEventType
	{
		Application,
		Game
	}

// LIFECYCLE

// OPERATORS

// METHODS

	static CEventDispatcherSingleton& Instance()
	{
		static CEventDispatcherSingleton Instance;
		return Instance;
	}

// DATA

private:

// TYPES

// LIFECYCLE

	CEventDispatcherSingleton();
	~CEventDispatcherSingleton();

// OPERATORS

// METHODS

// DATA

};

// REFERENCES

#endif // AS_EVENT_DISPATCHER_H




