#include "View.hpp"
#include "Common/Common.hpp"
#include "Common/Messages.hpp"
#include <exception>

AS::Views::CView::CView() :
	m_pParent(nullptr),
		m_Opacity(100)
{
}

AS::Views::CView::~CView()
{
}

AS::Views::CColor const& AS::Views::CView::GetBackgroundColor() const
{
	return m_BackgroundColor;
}

AS::Views::CPosition const& AS::Views::CView::GetGlobalPosition()
{
	if(m_pParent)
		m_GlobalPosition = m_pParent->GetGlobalPosition() + m_Position;
	return m_GlobalPosition;
}

int const& AS::Views::CView::GetOpacity() const
{
	return m_Opacity;
}

AS::Views::CPosition const& AS::Views::CView::GetPosition() const
{
	return m_Position;
}

AS::Views::CSize const& AS::Views::CView::GetSize() const
{
	return m_Size;
}

void AS::Views::CView::SetBackgroundColor(CColor const& color)
{
	m_BackgroundColor = color;
}

void AS::Views::CView::SetBackgroundImage(const std::string &file)
{
	throw std::exception(AS::Common::Messages::Exceptions::c_NotImplemented);
}

void AS::Views::CView::SetOpacity(int percent)
{
	m_Opacity = percent;
	if(percent < 0)
		m_Opacity = 0;
	if(percent > 100)
		m_Opacity = 100;
}

void AS::Views::CView::SetParent(CView* parent)
{
	m_pParent = parent;
}

void AS::Views::CView::SetPosition(const AS::Views::CPosition &position)
{
	m_Position = position;
}

void AS::Views::CView::SetSize(const AS::Views::CSize &size)
{
	m_Size = size;
}

void AS::Views::CView::Show()
{
	throw std::exception(AS::Common::Messages::Exceptions::c_NotImplemented);
}

void AS::Views::CView::Paint()
{
	throw std::exception(AS::Common::Messages::Exceptions::c_NotImplemented);
}

void AS::Views::CView::ProcessEvent(const Event_T &event)
{
	throw std::exception(AS::Common::Messages::Exceptions::c_NotImplemented);
}


