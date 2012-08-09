#include "Application.hpp"

#include "MainWindow.hpp"
#include "Common/Common.hpp"
#include "Framework/Assert.hpp"

#include <boost/bind.hpp>

CApplication::CApplication()
{
}

CApplication::~CApplication()
{
}

int CApplication::Start(int argc, char* argv[])
{
	m_MediaLayer.Start();
	m_MediaLayer.RegisterEventHandler(boost::bind(&AS::System::CMainLoop::ProcessEvent, &m_MainLoop, _1));
	m_MediaLayer.RegisterEventHandler(boost::bind(&AS::System::CMainWindow::ProcessEvent, &m_MainWindow, _1));

	m_MainWindow.Start();

	m_MainLoop.RegisterStepFunction(boost::bind(&AS::System::CMediaLayer::Events, &m_MediaLayer));

	m_MainLoop.Loop();

	return 0;
}






