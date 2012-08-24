#ifndef AS_VIEWS_VIEW_INCLUDE
	#define AS_VIEWS_VIEW_INCLUDE

#include "Types.hpp"
#include "Common/Common.hpp"
#include "Framework/ASSDL.hpp"
#include <string>

namespace AS
{
	namespace Views
	{
		class CView // ABC
		{
		public:
			CView();
			virtual ~CView() = 0;
			virtual CColor const& GetBackgroundColor() const;
			virtual CPosition const& GetGlobalPosition();
			virtual int const& GetOpacity() const;
			virtual CPosition const& GetPosition() const;
			virtual CSize const& GetSize() const;
			virtual void SetBackgroundColor(CColor const& color);
			virtual void SetBackgroundImage(std::string const& file);
			virtual void SetOpacity(int percent);
			virtual void SetParent(CView* parent);
			virtual void SetPosition(CPosition const& position);
			virtual void SetSize(CSize const& size);
			virtual void Show();
		protected:
			virtual void Paint();
			virtual void ProcessEvent(Event_T const& event);
		private:
			CView* m_pParent;
			CPosition m_Position;
			CPosition m_GlobalPosition;
			CSize m_Size;
			CColor m_BackgroundColor;
			int m_Opacity;
		};
	}
}

#endif // AS_VIEWS_VIEW_INCLUDE