/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_EVENT_HANDLER_H
	#define AS_EVENT_HANDLER_H

// INCLUDES

#include <cassert>
#include <boost/utility.hpp>

#include "SDL.h"

/**
 *	An ABC (Abstract Base Class) class.
 */
class CEventHandler
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

	/**
	 * operator()
	 *
	 * Code for handling incoming events.
	 * Each CEventHandler derived class should provide its own implementation.
	 */
	void operator()();
#if 0
	{
		SetEvent(SDL_Event const& Event)
	}
#endif

// METHODS

#if 0
	/**
	 * GetLastEvent()
	 *
	 * Returns last recieved event.
	 * This method can be virtual since it is called during a state change.
	 * State changes are rare so it's not that much of an overhead here.
	 */
	virtual SDL_Event const& GetLastEvent() const = 0;
#endif

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

#if 0
	SDL_Event const& GetEvent() const
	{
		assert(m_pEvent);
		return *m_pEvent;
	}

	void SetEvent(SDL_Event const& Event)
	{
		m_pEvent = &Event;
	}
#endif

// DATA

private:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

#if 0
	/**
	 * Reference (because of pointer to an unmutable object) to an event object.
	 */
	// TODO: Maybe a typedef?
	SDL_Event const* m_pEvent;
#endif

};


/**
 *	CMainWindowEventHandler
 */
class CMainWindowEventHandlerSingleton : public CEventHandler, public boost::noncopyable
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

	/**
	 * operator()
	 *
	 * Code for handling incoming events.
	 * @param A reference to an SDL_Event object.
	 */
	void operator()(SDL_Event const& Event);

// METHODS

	/**
	 * Instance()
	 *
	 * @return Returns a reference to an instance of an object.
	 */
	static CMainWindowEventHandlerSingleton& Instance()
	{
		static CMainWindowEventHandlerSingleton Instance;
		return Instance;
	}

#if 0
	/**
	 * GetLastEvent()
	 *
	 * @return Returns a reference to a last recieved event.
	 */
	virtual SDL_Event const& GetLastEvent() const;
#endif	

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

	CMainWindowEventHandlerSingleton();
	~CMainWindowEventHandlerSingleton();

// OPERATORS

// METHODS

// DATA

};


// REFERENCES
// [HC1] Hack­Craft - Templates and Inheritance http://www.hackcraft.net/cpp/templateInheritance/

#endif // AS_EVENT_HANDLER_H




