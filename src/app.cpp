#include <cassert>
#include "app.h"
#include "console.h"
#include "state_manager.h"
#include "WindowSystem.h"

const char c_InitFailed[] = "Init failed. Aborted!!!";

CApplicationSingleton::CApplicationSingleton() :
	m_Running(false)
{
}

CApplicationSingleton::~CApplicationSingleton()
{
}

CApplicationSingleton::EResult CApplicationSingleton::Init()
{
	// TODO: Steps in Init are more than SDL video init.
	// TODO: Use threads for startup.
	// TODO: Make thread-safe types.

	// start -> Init all subsystems -> Show main window -> start main loop -> clean-up -> exit.

	// Leaving checks of returns because this code is executed only once.

	CWindowSystemSingleton& WindowSystem = CWindowSystemSingleton::Instance();
	if(WindowSystem.Init() != CWindowSystemSingleton::e_Success)
	{
		return e_InitFailure;
	}

	return e_Success;
}

void CApplicationSingleton::Shutdown()
{
	CWindowSystemSingleton::Instance().Shutdown();
}


void CApplicationSingleton::Start()
{
	m_Running = true;

	// Init all subsystems.
	EResult Result = Init();
	if(Result != e_Success)
	{
		CConsoleSingleton::Instance()->Transmit(CConsoleSingleton::e_cerr, c_InitFailed);
		// TODO: [Low priority] Investigate this kind of flow.
		return;
	}

	// Reference has a right to be "faster" than pointer.
	CWindowSystemSingleton& WindowSystem = CWindowSystemSingleton::Instance();

	// THIS IS THE MAIN LOOP
	// TODO: Is enum to bool fast enough?
	while( m_Running )
	{
		// No overhead from calling virtuals allowed here.
		// Delegates and simple functions only.
		
		// Handle OSEvents.
		WindowSystem.SystemEvents();
		WindowSystem.Events();
		// OtherSystem.Events();

		// update();
		// render();
	}
	
	// cleanup();
	Shutdown();

	// Check for necessary subsystems.
	// Init all data.
	// Load resources
	// Start Engine.
	// Start game.
}

void CApplicationSingleton::Stop()
{
	// TODO: It is not enough!
	// We need to push an event here so it can be eaten.
	// Here is an example:
	// app.Start();
	// app.Stop(); // It never reaches this point (if no quit event occur).
	// It is no more valid. I moved Stop to private section.
	m_Running = false;
}













