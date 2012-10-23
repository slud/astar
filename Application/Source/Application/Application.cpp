#include "Application.hpp"
#include "Common/Common.hpp"
#include "Settings/SettingsSimple.hpp"
#include "System/Gui.hpp"

CApplication::CApplication()
{
}

CApplication::~CApplication()
{
}

int CApplication::Start(int argc, char* argv[])
{
	// TODO: Think about state machine...
	AS::Settings::Settings.Load();
	m_MediaLayer.Attach();
	m_MediaLayer.RegisterEventHandler(boost::bind(&AS::System::CMainLoop::ProcessEvent, &m_MainLoop, _1));
	m_MediaLayer.RegisterEventHandler(boost::bind(&AS::System::CMainWindow::ProcessEvent, &m_MainWindow, _1));
	m_MediaLayer.RegisterEventHandler(boost::bind(&AS::System::Gui::CGui::ProcessEvent, &AS::System::Gui::g_Gui, _1));
	m_MainWindow.Show();
	m_Renderer.Initialize();
	m_MainLoop.RegisterStepFunction(boost::bind(&AS::System::CMediaLayer::Events, &m_MediaLayer));
	m_MainLoop.RegisterStepFunction(boost::bind(&AS::Rendering::CRenderer<AS::Rendering::COpenGLRenderer>::Render, &m_Renderer));
	m_MainLoop.Loop();
	AS::Settings::Settings.Save();
	return 0;
}



