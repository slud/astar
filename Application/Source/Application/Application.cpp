#include "Application.hpp"
#include "Common/Common.hpp"
#include "Views/View.hpp"
#include <boost/bind.hpp>
#include <memory>

AS::Settings::CSettingsSimple gSettings;

CApplication::CApplication()
{
}

CApplication::~CApplication()
{
}

int CApplication::Start(int argc, char* argv[])
{
	// TODO: Think about state machine...
	gSettings.Load();
	m_MediaLayer.Attach();
	m_MediaLayer.RegisterEventHandler(boost::bind(&AS::System::CMainLoop::ProcessEvent, &m_MainLoop, _1));
	m_MediaLayer.RegisterEventHandler(boost::bind(&AS::System::CMainWindow::ProcessEvent, &m_MainWindow, _1));
	m_MainWindow.Show();
	m_Renderer.Initialize();
	m_MainLoop.RegisterStepFunction(boost::bind(&AS::System::CMediaLayer::Events, &m_MediaLayer));
	m_MainLoop.RegisterStepFunction(boost::bind(&AS::Rendering::CRenderer<AS::Rendering::COpenGLRenderer>::Render, &m_Renderer));
	AS::Views::CView View;
	AS::Views::CView View2;
	AS::Views::CColor Green;
	Green.Red = 0.0f;
	Green.Green = 1.0f;
	Green.Blue = 0.0f;
	View2.SetBackgroundColor(Green);
	AS::Views::CPosition Pos;
	Pos.X = 40;
	Pos.Y = 40;
	View2.SetPosition(Pos);
	AS::Views::CSize Size;
	Size.Width = 40;
	Size.Height = 40;
	View2.SetSize(Size);
	View2.SetName("View2");
	std::auto_ptr<AS::Views::CViewComponent> ap(&View2);
	View.Add(ap);
	View.Show();
	//View2.Show();
	m_MainLoop.Loop();
	gSettings.Save();
	return 0;
}






