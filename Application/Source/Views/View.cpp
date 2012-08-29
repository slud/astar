#include "View.hpp"

AS::Views::CView::CView()
{
}

AS::Views::CView::~CView()
{
}

/*
void AS::Views::CView::Show()
{
}

void AS::Views::CView::Paint()
{
}
*/
void AS::Views::CView::ProcessEvent(Event_T const& event)
{
	CViewComponent::ProcessEvent(event);
	switch( event.type )
	{
	case SDL_QUIT:
		break;
	case SDL_KEYDOWN:
		switch ( event.key.keysym.sym )
		{
		case SDLK_ESCAPE:
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}
}
