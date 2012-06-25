/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_EVENT_SYSTEM_INCLUDE
	#define AS_EVENT_SYSTEM_INCLUDE

// INCLUDES
#include "Application.hpp"
#include "Framework/ASSDL.hpp"

#include <list>

/**
 *	Class description.
 */
class CEventSystem
{
public:

// TYPES

	typedef boost::function<void (SDL_Event const&)> EventHandlerDelegate;

// LIFECYCLE

	CEventSystem();

// OPERATORS

// METHODS

	bool GetSystemEvent();

	void SubscribeForEvents(EventHandlerDelegate);

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

	CEventSystem(CEventSystem const&);
	~CEventSystem();

// OPERATORS

	CEventSystem& operator=(CEventSystem const&);

// METHODS

// DATA

	// Buffered events: Collapsing them will cause update in different areas.
	static const int m_MaxEvents = 60;
	SDL_Event m_Event;

	std::list<EventHandlerDelegate> m_EventHandlers;
};

// REFERENCES

#endif // AS_EVENT_SYSTEM_INCLUDE




