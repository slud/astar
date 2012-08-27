#ifndef AS_VIEWS_VIEW_COMPONENTS_INCLUDE
	#define AS_VIEWS_VIEW_COMPONENTS_INCLUDE

#include "Types.hpp"
#include "Common/Common.hpp"
#include "Framework/ASSDL.hpp"
#include "Framework/Component.hpp"
#include "Framework/Composite.hpp"
#include "Framework/Leaf.hpp"
#include <boost/utility.hpp>
#include <string>

namespace AS
{
	namespace Views
	{
		class CViewComponent : public AS::Compositing::TComponent<CViewComponent>, boost::noncopyable
		{
		public:
			CViewComponent();
			virtual ~CViewComponent() = 0;
			virtual CColor const& GetBackgroundColor() const;
			virtual CPosition const& GetGlobalPosition();
			virtual int const& GetOpacity() const;
			virtual CPosition const& GetPosition() const;
			virtual CSize const& GetSize() const;
			virtual void SetBackgroundColor(CColor const& color);
			virtual void SetBackgroundImage(std::string const& file);
			virtual void SetOpacity(int percent);
			virtual void SetParent(CViewComponent* parent);
			virtual void SetPosition(CPosition const& position);
			virtual void SetSize(CSize const& size);
			virtual void Show() = 0;
		protected:
			virtual void Paint() = 0;
			virtual void ProcessEvent(Event_T const& event) = 0;
		private:
			CViewComponent* m_pParent;
			CPosition m_Position;
			CPosition m_GlobalPosition;
			CSize m_Size;
			CColor m_BackgroundColor;
			int m_Opacity;
		};

		class CViewComposite : public AS::Compositing::TComposite<CViewComponent>
		{
		};

		class CViewLeaf : public AS::Compositing::TLeaf<CViewComponent>
		{
		};
	}
}

#endif // AS_VIEWS_VIEW_COMPONENTS_INCLUDE