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

/**
 *	Class description.
 */
class CEventSystemSingleton
{
public:

// TYPES

	ERecipient
	{
		e_Application   =  0x01,
		e_WindowSystem  =  0x02
	};

	// TODO: To be replaced.
	typedef struct
	{
		Interrupt key;
		long int timestamp;
	} Event_T;

// LIFECYCLE

// OPERATORS

// METHODS

	void AddEvent(Event_T const& Event, unsigned int RecipientFlags);

	bool GetEvent(Event_T const& Event, ERecipient Recipient) const;

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	static CEventSystemSingleton& Instance()
	{
		static CEventSystemSingleton Instance;
		return Instance;
	}

// DATA

private:

// TYPES

// LIFECYCLE

	CEventSystemSingleton();
	~CEventSystemSingleton();

// OPERATORS

// METHODS

// DATA
	const int m_MaxEvents = 60;

};

// REFERENCES

#endif // AS_EVENT_DISPATCHER_H




