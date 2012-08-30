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

#include <cstdio>
#include <cstdlib>
#include <ctime>

AS::Views::CView View;
static void Przesun(Event_T const& event)
{
	/*
	switch(event.type)
	{
	case SDL_KEYDOWN:
		switch(event.key.keysym.sym)
		{
		case SDLK_LEFT:
			View["View2"].SetPosition(AS::Views::CPosition(View["View2"].GetPosition().X-1,View["View2"].GetPosition().Y));
			break;
		case SDLK_RIGHT:
			View["View2"].SetPosition(AS::Views::CPosition(View["View2"].GetPosition().X+1,View["View2"].GetPosition().Y));
			break;
		case SDLK_UP:
			View["View2"].SetPosition(AS::Views::CPosition(View["View2"].GetPosition().X,View["View2"].GetPosition().Y-1));
			break;
		case SDLK_DOWN:
			View["View2"].SetPosition(AS::Views::CPosition(View["View2"].GetPosition().X,View["View2"].GetPosition().Y+1));
			break;
		}
		break;
	default:
		break;
	}
	*/
	Uint8 *keystates = SDL_GetKeyState( NULL );
    //If up is pressed
    if( keystates[ SDLK_UP ] )
    {
        View["View2"].SetPosition(AS::Views::CPosition(View["View2"].GetPosition().X,View["View2"].GetPosition().Y-1));
    }

    //If down is pressed
    if( keystates[ SDLK_DOWN ] )
    {
        View["View2"].SetPosition(AS::Views::CPosition(View["View2"].GetPosition().X,View["View2"].GetPosition().Y+1));
    }

    //If left is pressed
    if( keystates[ SDLK_LEFT ] )
    {
        View["View2"].SetPosition(AS::Views::CPosition(View["View2"].GetPosition().X-1,View["View2"].GetPosition().Y));
    }

    //If right is pressed
    if( keystates[ SDLK_RIGHT ] )
    {
        View["View2"].SetPosition(AS::Views::CPosition(View["View2"].GetPosition().X+1,View["View2"].GetPosition().Y));
    }
	float r = (float)rand()/(float)RAND_MAX;
	float g = (float)rand()/(float)RAND_MAX;
	float b = (float)rand()/(float)RAND_MAX;
	View.SetBackgroundColor(AS::Views::CColor(r,g,b));
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

	AS::Views::CView* View2 = new AS::Views::CView();
	AS::Views::CColor Green;
	Green.Red = 0.0f;
	Green.Green = 1.0f;
	Green.Blue = 0.0f;
	View2->SetBackgroundColor(Green);
	AS::Views::CPosition Pos;
	Pos.X = 40;
	Pos.Y = 40;
	View2->SetPosition(Pos);
	AS::Views::CSize Size;
	Size.Width = 40;
	Size.Height = 40;
	View2->SetSize(Size);
	View2->SetName("View2");
	std::auto_ptr<AS::Views::CViewComponent> ap(View2);
	View.Add(ap);
	AS::Views::CPosition Pos1;
	Pos1.X = 80;
	Pos1.Y = 80;
	View.SetPosition(Pos1);
	View.SetSize(AS::Views::CSize(100,80));
	View2->SetParent(&View);
	srand ( time(NULL) );
	m_MediaLayer.RegisterEventHandler(boost::bind(&AS::Views::CView::ProcessEvent, &View, _1));
	View.KeyDown.Connect(boost::bind(&Przesun, _1));
	View.Show();
	//View2.Show();

	m_MainLoop.Loop();
	gSettings.Save();
	return 0;
}






