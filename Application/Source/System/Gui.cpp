#include "Gui.hpp"
#include "Views/ViewComponents.hpp"

namespace AS
{
	namespace System
	{
		namespace Gui
		{
			CGui g_Gui;
		}
	}
}

void AS::System::Gui::CGui::ProcessEvent(Event_T const& event)
{
	for(size_t i=0; i < m_Delegates.size(); i++)
	{
		m_Delegates[i](event);
	}
}

void AS::System::Gui::CGui::RegisterViewEventProcessor(ViewEventProcessorDelegate const& delegate)
{
	m_Delegates.push_back(delegate);
}