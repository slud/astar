/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_EVENT_SYSTEM_H
	#define AS_EVENT_SYSTEM_H

// INCLUDES
#include "app.h"
#include "KeyInput.h"
#include "SDL.h"

/**
 *	Class description.
 */
class CEventSystemSingleton
{
public:

// TYPES

	enum ERecipient
	{
		e_Application   =  0x01,
		e_WindowSystem  =  0x02
	};

	// TODO: To be replaced.
	/*
	typedef struct
	{
		Interrupt key;
		long int timestamp;
	} Event_T;
	*/

	typedef SDL_Event Event_T;

// LIFECYCLE

// OPERATORS

// METHODS

	// This is for buffered events.
	//bool AddEvent(Event_T const& Event);
	Event_T const& GetEvent();
	bool GetSystemEvent();

	static CEventSystemSingleton& Instance()
	{
		static CEventSystemSingleton Instance;
		return Instance;
	}

	void SetEvent(Event_T const& Event);
	//void AddEvent(Event_T const& Event, unsigned int RecipientFlags);

	//bool GetEvent(Event_T const& Event, ERecipient Recipient) const;

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

	CEventSystemSingleton();
	~CEventSystemSingleton();

// OPERATORS

// METHODS

// DATA

	// Buffered events: Collapsing them will cause update in different areas.
	static const int m_MaxEvents = 60;
	SDL_Event m_Event;

};

// REFERENCES

#endif // AS_EVENT_DISPATCHER_H




