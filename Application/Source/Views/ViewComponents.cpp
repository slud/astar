#include "ViewComponents.hpp"
#include "Common/Common.hpp"
#include "Common/Messages.hpp"
#include <exception>

AS::Views::CViewComponent::CViewComponent() :
	m_pParent(nullptr),
		m_Opacity(100),
		KeyDown(m_KeyDownEventHandler)
{
}

AS::Views::CViewComponent::~CViewComponent()
{
}

AS::Views::CColor const& AS::Views::CViewComponent::GetBackgroundColor() const
{
	return m_BackgroundColor;
}

AS::Views::CPosition const& AS::Views::CViewComponent::GetGlobalPosition()
{
	if(m_pParent)
		m_GlobalPosition = m_pParent->GetGlobalPosition() + m_Position;
	else
		m_GlobalPosition = m_Position;
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
}

void AS::Views::CViewComponent::SetPosition(const AS::Views::CPosition &position)
{
	m_Position = position;
}

void AS::Views::CViewComponent::SetSize(const AS::Views::CSize &size)
{
	m_Size = size;
}

void AS::Views::CViewComponent::Show()
{
	throw std::exception(AS::Common::Messages::Exceptions::c_NotImplemented);
	// Prepare a stack of member function pointers from children sub-tree.
	// Register this.Render() which will itereate through the stack and render each child.
}

void AS::Views::CViewComponent::Paint()
{
	glBegin( GL_QUADS );
		glColor3f(m_BackgroundColor.Red, m_BackgroundColor.Green, m_BackgroundColor.Blue);
		glVertex2i(GetGlobalPosition().X, GetGlobalPosition().Y);
		glVertex2i(GetGlobalPosition().X+GetSize().Width, GetGlobalPosition().Y);
		glVertex2i(GetGlobalPosition().X+GetSize().Width, GetGlobalPosition().Y+GetSize().Height);
		glVertex2i(GetGlobalPosition().X, GetGlobalPosition().Y+GetSize().Height);
		glColor3f(1.0f, 0.0f, 1.0f); // TODO: set color to default. magenta here.
	glEnd();
}

void AS::Views::CViewComponent::ProcessEvent(Event_T const& event)
{
	switch( event.type )
	{
	case SDL_KEYDOWN:
		m_KeyDownEventHandler(event);
		break;
	default:
		break;
	}
}


