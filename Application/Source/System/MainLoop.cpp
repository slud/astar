#include "MainLoop.hpp"

AS::System::CMainLoop::CMainLoop() :
	m_Running(false)
{
}

AS::System::CMainLoop::~CMainLoop()
{
}

void AS::System::CMainLoop::ProcessEvent(Event_T const& event)
{
	switch( event.type )
	{
	case SDL_QUIT:
		Stop();
		break;
	case SDL_KEYDOWN:
		switch ( event.key.keysym.sym )
		{
		case SDLK_ESCAPE:
			Stop();
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}
}

void AS::System::CMainLoop::Loop()
{
	m_Running = true;
	while( m_Running )
	{
		std::list<LoopCallbackEventHandler>::const_iterator it;
		for(it = m_LoopCallbacks.begin(); it != m_LoopCallbacks.end(); it++ )
		{
			(*it)();
		}
	}
}

void AS::System::CMainLoop::RegisterStepFunction(LoopCallbackEventHandler callback)
{
	m_LoopCallbacks.push_back(callback);
}

void AS::System::CMainLoop::Stop()
{
	m_Running = false;
}