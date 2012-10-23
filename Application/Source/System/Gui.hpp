#ifndef AS_SYSTEM_GUI_INCLUDE
	#define AS_SYSTEM_GUI_INCLUDE

#include "Views/ViewMediaEventProcessor.hpp"
#include <boost/function.hpp>
#include <vector>

namespace AS
{
	namespace System
	{
		namespace Gui
		{
			class CGui
			{
			public:
				//typedef boost::function<AS::Views::IViewMediaEventProcessor> ViewEventProcessorDelegate;
				typedef boost::function<AS::Views::CViewProcessEventFeedback const& (Event_T const&)> ViewEventProcessorDelegate;
				void ProcessEvent(Event_T const& event);
				void RegisterViewEventProcessor(ViewEventProcessorDelegate const& delegate);
			private:
				std::vector<ViewEventProcessorDelegate> m_Delegates;
			};

			extern CGui g_Gui;
		}
	}
}

#endif // AS_SYSTEM_GUI_INCLUDE