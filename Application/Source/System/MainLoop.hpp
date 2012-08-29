#ifndef AS_MAIN_LOOP_INCLUDE
    #define AS_MAIN_LOOP_INCLUDE

#include "Framework/ASSDL.hpp"
#include <boost/function.hpp>
#include <vector>

namespace AS
{
	namespace System
	{
		class CMainLoop
		{
		public:
			typedef boost::function<void ()> LoopStepCallback;
			CMainLoop();
			virtual ~CMainLoop();
			virtual void ProcessEvent(Event_T const& event);
			virtual void Loop();
			virtual void RegisterStepFunction(LoopStepCallback callback);
		private:
			CMainLoop(CMainLoop const&);
			CMainLoop& operator=(CMainLoop const&);
			void Stop();
			bool m_Running;
			std::vector<LoopStepCallback> m_LoopCallbacks;
		};
	} // ns System
} // ns AS

#endif // AS_MAIN_LOOP_INCLUDE



