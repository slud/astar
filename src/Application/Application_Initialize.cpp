#include "Common/Common.hpp"
#include "Assert.hpp"
#include "Application.hpp"

//#include "state_manager.h"
#include "WindowSystem.hpp"
#include "EventSystem.h"

const char c_InitFailed[] = "Init failed. Aborted!!!";

CApplication::CApplication() :
	m_pWindowSystem(nullptr),
	m_Running(false)
{
}

CApplication::~CApplication()
{
}

CApplication::EResult CApplication::Initialize()
{
	// TODO: Steps in Init are more than SDL video init.
	// TODO: Use threads for startup.
	// TODO: Make thread-safe types.

	// start -> Init all subsystems -> Show main window -> start main loop -> clean-up -> exit.

	// Leaving checks of returns because this code is executed only once.

	CWindowSystemSingleton& WindowSystem = CWindowSystemSingleton::Instance();
	if(WindowSystem.Init() != CWindowSystemSingleton::e_Success)
	{
		return e_InitializeFailure;
	}

	CApplicationStateManagerSingleton::Instance();

	return e_Success;
}

void CApplication::Shutdown()
{
	CWindowSystemSingleton::Instance().Shutdown();
}

void CApplication::Stop()
{
	m_Running = false;
}













