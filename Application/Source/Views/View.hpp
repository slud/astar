#ifndef AS_VIEWS_VIEW_INCLUDE
	#define AS_VIEWS_VIEW_INCLUDE

#include "ViewComponents.hpp"

namespace AS
{
	namespace Views
	{
		class CView : public CViewComposite
		{
		public:
			CView();
			virtual ~CView();
			//virtual void Show();
		protected:
			//virtual void Paint();
			virtual void ProcessEvent(Event_T const& event);
		};
	}
}

#endif // AS_VIEWS_VIEW_INCLUDE