#ifndef AS_VIEWS_VIEW_MEDIA_EVENT_PROCESSOR_INCLUDE
#define AS_VIEWS_VIEW_MEDIA_EVENT_PROCESSOR_INCLUDE

#include "System/EventProcessor.hpp"

namespace AS
{
	namespace Views
	{
		class CViewProcessEventFeedback;
		class IViewMediaEventProcessor// : public TEventProcessor<Event_T, CViewProcessEventFeedback const&> {};
		{
		public:
			virtual CViewProcessEventFeedback const& ProcessEvent(Event_T const& event) = 0;
		};
	}
}

#endif // AS_VIEWS_VIEW_MEDIA_EVENT_PROCESSOR_INCLUDE