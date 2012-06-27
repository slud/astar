#include "Application.hpp"

#include "MainWindow.hpp"
#include "Common/Common.hpp"
#include "Framework/Assert.hpp"


int CApplication::Start(int argc, char* argv[])
{
	Initialize();

	m_pMainWindow->Start();

	Loop();
	
	Shutdown();

	return 0;
}

void CApplication::Shutdown()
{
	m_pMainWindow->Shutdown();

	SDL_Quit();
}




