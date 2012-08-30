#include "ViewComponents.hpp"
#include "Common/Common.hpp"
#include "Common/Messages.hpp"
#include "Renderer/Renderer.hpp"
#include "SDL_opengl.h"
#include <boost/bind.hpp>
#include <exception>

AS::Views::CViewComponent::CViewComponent() :
	m_pParent(nullptr),
	m_Opacity(100),
	KeyDown(m_KeyDownEventHandler),
	MouseButtonDown(m_MouseButtonDownEventHandler)
{
}

AS::Views::CViewComponent::~CViewComponent()
{
}

void AS::Views::CViewComponent::CalculateGlobalPosition()
{
	if(m_pParent)
		m_GlobalPosition = m_pParent->GetGlobalPosition() + m_Position;
	else
		m_GlobalPosition = m_Position;
}

AS::Views::CColor const& AS::Views::CViewComponent::GetBackgroundColor() const
{
	return m_BackgroundColor;
}

AS::Views::CPosition const& AS::Views::CViewComponent::GetGlobalPosition()
{
	CalculateGlobalPosition();
	return m_GlobalPosition;
}

int const& AS::Views::CViewComponent::GetOpacity() const
{
	return m_Opacity;
}

AS::Views::CPosition const& AS::Views::CViewComponent::GetPosition() const
{
	return m_Position;
}

AS::Views::CSize const& AS::Views::CViewComponent::GetSize() const
{
	return m_Size;
}

void AS::Views::CViewComponent::Paint()
{
	glBegin( GL_QUADS );
		glColor3f(m_BackgroundColor.Red, m_BackgroundColor.Green, m_BackgroundColor.Blue);
		glVertex2i(m_Point0.X, m_Point0.Y);
		glVertex2i(m_Point1.X, m_Point0.Y);
		glVertex2i(m_Point1.X, m_Point1.Y);
		glVertex2i(m_Point0.X, m_Point1.Y);
		glColor3f(1.0f, 0.0f, 1.0f); // TODO: Set back color to default value. Magenta here.
	glEnd();
}

void AS::Views::CViewComponent::ProcessEvent(Event_T const& event)
{
	switch( event.type )
	{
	case SDL_KEYDOWN:
		m_KeyDownEventHandler(event);
		break;
	case SDL_MOUSEBUTTONDOWN:
		m_MouseButtonDownEventHandler(event);
		break;
	default:
		break;
	}

	Uint8 *keystates = SDL_GetKeyState( NULL );
    //If up is pressed
    if(keystates[SDLK_UP] || keystates[SDLK_DOWN] || keystates[SDLK_LEFT] || keystates[SDLK_RIGHT])
		m_KeyDownEventHandler(event);
}

void AS::Views::CViewComponent::RecalculatePositions()
{
	CalculateGlobalPosition();
	m_Point0.X = m_GlobalPosition.X;
	m_Point0.Y = m_GlobalPosition.Y;
	m_Point1.X = m_GlobalPosition.X + m_Size.Width;
	m_Point1.Y = m_GlobalPosition.Y + m_Size.Height;
}

void AS::Views::CViewComponent::SetBackgroundColor(CColor const& color)
{
	m_BackgroundColor = color;
}

void AS::Views::CViewComponent::SetBackgroundImage(const std::string &file)
{
	throw std::exception(AS::Common::Messages::Exceptions::c_NotImplemented);
}

void AS::Views::CViewComponent::SetOpacity(int percent)
{
	m_Opacity = percent;
	if(percent < 0)
		m_Opacity = 0;
	if(percent > 100)
		m_Opacity = 100;
}

void AS::Views::CViewComponent::SetParent(CViewComponent* parent)
{
	m_pParent = parent;
	RecalculatePositions();
}

void AS::Views::CViewComponent::SetPosition(const AS::Views::CPosition &position)
{
	m_Position = position;
	RecalculatePositions();
}

void AS::Views::CViewComponent::SetSize(const AS::Views::CSize &size)
{
	m_Size = size;
	RecalculatePositions();
}

void AS::Views::CViewComponent::Show()
{
	AS::Rendering::Register2dPaintHandler(boost::bind(&AS::Views::CViewComponent::Paint, this));
}

AS::Views::CViewComposite::CViewComposite()
{
}

AS::Views::CViewComposite::~CViewComposite()
{
}

void AS::Views::CViewComposite::Add(std::auto_ptr<CViewComponent> viewComponent)
{
	AS_ASSERT(nullptr != viewComponent.get(), "Null pointer.");
	AS_ASSERT(!viewComponent->GetName().empty(), "Component doesn't have a name.");
	viewComponent->SetParent(this);
	TComposite<CViewComponent>::Add(viewComponent);
}

void AS::Views::CViewComposite::Paint()
{
	CViewComponent::Paint(); // Draw myself.
	for(size_t i=0; i < m_PaintDelegates.size(); i++) // Draw my content.
	{
		m_PaintDelegates[i]();
	}
}

void AS::Views::CViewComposite::ProcessEvent(Event_T const& event)
{
	CViewComponent::ProcessEvent(event);
	for(size_t i=0; i < m_EventDelegates.size(); i++)
	{
		m_EventDelegates[i](event);
	}
}

void AS::Views::CViewComposite::Show()
{
	int i = 0;
	// Prepare a stack of member function pointers from children sub-tree.
	// Register this.Render() which will itereate through the stack and render each child.
	PaintDelegateCollection Collection0;
	RegisterPaintDelegates(Collection0);
	m_PaintDelegates.resize(Collection0.size());
	PaintDelegateCollection::const_iterator it0;
	// Copy delegates.
	for(it0=Collection0.begin(); it0!=Collection0.end(); it0++)
	{
		m_PaintDelegates[i] = *it0;
		i++;
	}

	EventDelegateCollection Collection1;
	RegisterEventDelegates(Collection1);
	m_EventDelegates.resize(Collection1.size());
	EventDelegateCollection::const_iterator it1;
	i=0;
	for(it1=Collection1.begin(); it1!=Collection1.end(); it1++)
	{
		m_EventDelegates[i] = *it1;
		i++;
	}

	CViewComponent::Show();
}

void AS::Views::CViewComposite::RegisterEventDelegates(EventDelegateCollection& delegates)
{
	int Count = GetCount();
	for(int i=0; i<Count; i++)
	{
		delegates.push_back(boost::bind(&AS::Views::CViewComponent::ProcessEvent, &(*this)[i], _1));
	}
	for(int i=0; i<Count; i++)
	{
		(*this)[i].RegisterEventDelegates(delegates);
	}
}

void AS::Views::CViewComposite::RegisterPaintDelegates(PaintDelegateCollection& delegates)
{
	int Count = GetCount();
	for(int i=0; i<Count; i++)
	{
		delegates.push_back(boost::bind(&AS::Views::CViewComponent::Paint, &(*this)[i]));
	}
	for(int i=0; i<Count; i++)
	{
		(*this)[i].RegisterPaintDelegates(delegates);
	}
}

AS::Views::CViewLeaf::CViewLeaf()
{
}

AS::Views::CViewLeaf::~CViewLeaf()
{
}

void AS::Views::CViewLeaf::Paint()
{
	CViewComponent::Paint();
}

void AS::Views::CViewLeaf::ProcessEvent(Event_T const& event)
{
	CViewComponent::ProcessEvent(event);
}

void AS::Views::CViewLeaf::RegisterEventDelegates(EventDelegateCollection& delegates)
{
}

void AS::Views::CViewLeaf::RegisterPaintDelegates(PaintDelegateCollection& delegates)
{
}

void AS::Views::CViewLeaf::Show()
{
	CViewComponent::Show(); // Just register my paint handler.
}



