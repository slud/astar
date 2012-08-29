#ifndef AS_VIEWS_VIEW_COMPONENTS_INCLUDE
	#define AS_VIEWS_VIEW_COMPONENTS_INCLUDE

#include "Types.hpp"
#include "Common/Common.hpp"
#include "Framework/ASSDL.hpp"
#include "Framework/Functional.hpp"
#include "Framework/Component.hpp"
#include "Framework/Composite.hpp"
#include "Framework/Leaf.hpp"
#include <boost/utility.hpp>
#include <boost/signals2.hpp>
#include <string>
#include <vector>

namespace AS
{
	namespace Views
	{
		class CViewComponent : public AS::Compositing::TComponent<CViewComponent>, boost::noncopyable
		{
		public:
			typedef boost::signals2::signal<void (Event_T const&)> KeyDownEventHandler;
			typedef AS::Functional::TSimpleEvent<KeyDownEventHandler> KeyDownSimpleEvent;
			typedef boost::function<void ()> PaintDelegate;
			typedef std::list<PaintDelegate> PaintDelegateCollection;
			CViewComponent();
			virtual ~CViewComponent() = 0;
			virtual CColor const& GetBackgroundColor() const;
			virtual CPosition const& GetGlobalPosition();
			virtual int const& GetOpacity() const;
			virtual CPosition const& GetPosition() const;
			virtual CSize const& GetSize() const;
			virtual void Paint() = 0;
			virtual void ProcessEvent(Event_T const& event) = 0;
			virtual void RegisterPaintDelegates(PaintDelegateCollection& delegates) = 0;
			virtual void SetBackgroundColor(CColor const& color);
			virtual void SetBackgroundImage(std::string const& file);
			virtual void SetOpacity(int percent);
			virtual void SetParent(CViewComponent* parent);
			virtual void SetPosition(CPosition const& position);
			virtual void SetSize(CSize const& size);
			virtual void Show() = 0; // TODO: Move it to CView class.
			KeyDownSimpleEvent KeyDown;
		private:
			CViewComponent* m_pParent;
			CPosition m_Position;
			CPosition m_GlobalPosition;
			CSize m_Size;
			CColor m_BackgroundColor;
			int m_Opacity;
			KeyDownEventHandler m_KeyDownEventHandler;
		};

		class CViewComposite : public AS::Compositing::TComposite<CViewComponent>
		{
		public:
			CViewComposite();
			virtual ~CViewComposite();
			virtual void Paint();
			virtual void RegisterPaintDelegates(PaintDelegateCollection& delegates);
			virtual void Show();
		private:
			std::vector<PaintDelegate> m_PaintDelegates;
		};

		class CViewLeaf : public AS::Compositing::TLeaf<CViewComponent>
		{
		public:
			CViewLeaf();
			virtual ~CViewLeaf();
			virtual void Paint();
			virtual void RegisterPaintDelegates(PaintDelegateCollection& delegates);
			virtual void Show();
		};
	}
}

#endif // AS_VIEWS_VIEW_COMPONENTS_INCLUDE