#ifndef AS_EVENT_HANDLER_H
	#define AS_EVENT_HANDLER_H

#include "console.h"

#include "SDL.h"
	
class CEventPuller
{
public:
	enum EStates
	{
		e_MainWindow,
		e_Menu
	};
	//SDL_Event *_event
	void operator()()
	{
		while( SDL_PollEvent(&m_Event) )
		{
			/*
			//events( &event );
		    switch( m_Event.type )
			{

			}
			*/
			
			// CALL ADEQUATE HANDLER
			
		}
	}

private:
	EStates m_eState;
	SDL_Event m_Event;		
};
////////////////////////////////////////////////////////////
class CEventHandler // common
{
public:
	SDL_Event* GetLastEvent() const;

protected:
	SDL_Event m_Event;
};
////////////////////////////////////////////////////////////
class CEventHandlerApp : public CEventHandler
{
public:
	void handler(SDL_Event *_event)
	{
			
	}
};
////////////////////////////////////////////////////////////
class CEventHandlerMainWindow : public CEventHandlerApp // derive to handle all app's events first.
{
public:
	void operator()(SDL_Event* Event);
};
////////////////////////////////////////////////////////////
class CEventHandlerMainMenu
{
public:
	enum States
	{
		e_MainMenu,
		e_Graphics,
		e_Audio,
		e_Controls
	};

	void handler(SDL_Event *_event)
	{
			//wspolne dla menu np.: ESC
	}
};
////////////////////////////////////////////////////////////

#endif

