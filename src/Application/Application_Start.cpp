#include "Application.hpp"
#include "Assert.hpp"
#include "WindowSystem.hpp"
//#include "EventSystem.hpp"
//#include "console.h"
//#include "state_manager.h"



int CApplication::Start(int argc, char* argv[])
{
	m_pWindowSystem(new CWindowSystem);

	ASSERT(m_pWindowSystem, "Failed to create Window system");

	m_pWindowSystem->Start();

	Loop(); // Start the main loop.
	
	Shutdown(); // Shutdown subsystems.
	
	return 0;
}





