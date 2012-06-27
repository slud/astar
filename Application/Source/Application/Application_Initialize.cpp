#include "Application.hpp"

#include "Common/Common.hpp"
#include "Framework/Assert.hpp"

#include "MainWindow.hpp"
//#include "EventSystem.h"

const char cInitFailed[] = "Init failed. Aborted!!!";

CApplication::CApplication() :
	m_pMainWindow(),
	m_Running(false)
{
}

CApplication::~CApplication()
{
}

CApplication::EResult CApplication::Initialize()
{
    // Initialize SDL.
	int result = SDL_Init(SDL_INIT_VIDEO);
	ASSERT(result == 0, SDL_GetError());

	m_pMainWindow.reset(new CMainWindow);
	ASSERT(nullptr != m_pMainWindow.get(), "Failed to create Window system");

	return e_Success;
}



void CApplication::Stop()
{
	m_Running = false;
}













