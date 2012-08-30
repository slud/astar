#include "SampleGui.hpp"
#include "Views/View.hpp"
#include <boost/bind.hpp>
#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <memory>


AS::Views::CView g_View;
Uint32 ticks;
int speed = 2;

static void Przesun(Event_T const& event)
{
	if(1000/33 > (SDL_GetTicks() - ticks))
		return;
	ticks = SDL_GetTicks();
	
	Uint8 *keystates = SDL_GetKeyState( NULL );
    //If up is pressed
    if( keystates[ SDLK_UP ] )
    {
        g_View["View2"].SetPosition(AS::Views::CPosition(g_View["View2"].GetPosition().X,g_View["View2"].GetPosition().Y-speed));
    }

    //If down is pressed
    if( keystates[ SDLK_DOWN ] )
    {
        g_View["View2"].SetPosition(AS::Views::CPosition(g_View["View2"].GetPosition().X,g_View["View2"].GetPosition().Y+speed));
    }

    //If left is pressed
    if( keystates[ SDLK_LEFT ] )
    {
        g_View["View2"].SetPosition(AS::Views::CPosition(g_View["View2"].GetPosition().X-speed,g_View["View2"].GetPosition().Y));
    }

    //If right is pressed
    if( keystates[ SDLK_RIGHT ] )
    {
        g_View["View2"].SetPosition(AS::Views::CPosition(g_View["View2"].GetPosition().X+speed,g_View["View2"].GetPosition().Y));
    }
	
	float r = (float)rand()/(float)RAND_MAX;
	float g = (float)rand()/(float)RAND_MAX;
	float b = (float)rand()/(float)RAND_MAX;
	//View.SetBackgroundColor(AS::Views::CColor(r,g,b));
}

void AS::Gui::CSampleGui::DisplayGui(AS::System::CMediaLayer& mediaLayer)
{
	std::auto_ptr<AS::Views::CViewComponent> View2(new AS::Views::CView());
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
	
	g_View.Add(View2);
	AS::Views::CPosition Pos1;
	Pos1.X = 80;
	Pos1.Y = 80;
	g_View.SetPosition(Pos1);
	g_View.SetSize(AS::Views::CSize(100,80));
	//View2->SetParent(&g_View);
	srand ( time(NULL) );
	mediaLayer.RegisterEventHandler(boost::bind(&AS::Views::CView::ProcessEvent, &g_View, _1));
	g_View.KeyPress.Connect(boost::bind(&Przesun, _1));
	g_View.Show();
}