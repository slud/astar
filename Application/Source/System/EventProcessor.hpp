#ifndef AS_SYSTEM_EVENT_PROCESSOR_INCLUDE
#define AS_SYSTEM_EVENT_PROCESSOR_INCLUDE

#include "Framework/ASSDL.hpp"

namespace AS
{
	namespace System
	{
		namespace Events
		{
			template<class T, class R>
			class TEventProcessor
			{
			public:
				virtual R ProcessEvent(T const& event) = 0;
			};

			class CFeedback
			{
			public:
				bool Handled;
			};

			class IMediaEventProcessor : public TEventProcessor<Event_T, CFeedback>
			{
			};
		}
	}
}

#endif // AS_SYSTEM_EVENT_PROCESSOR_INCLUDE