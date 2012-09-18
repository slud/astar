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
			EModalityLevel GetModalityLevel() const;
		};
	}
}

#endif // AS_VIEWS_VIEW_INCLUDE