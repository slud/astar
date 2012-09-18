#ifndef AS_VIEWS_VIEW_COMPONENTS_INCLUDE
	#define AS_VIEWS_VIEW_COMPONENTS_INCLUDE

#include "Types.hpp"
#include "Common/Common.hpp"
#include "Framework/ASSDL.hpp"
#include "Framework/Functional.hpp"
#include "Framework/Component.hpp"
#include "Framework/Composite.hpp"
#include "Framework/Leaf.hpp"
#include "System/EventProcessor.hpp"
#include <boost/utility.hpp>
#include <boost/signals2.hpp>
#include <string>
#include <vector>

namespace AS
{
	namespace Views
	{
		class CViewFeedback : public AS::System::Events::CFeedback
		{
		public:
			class CViewComponent;
			CViewComponent* Component;
		};

		class CViewComponent : public AS::Compositing::TComponent<CViewComponent>, boost::noncopyable
		{
		public:
			typedef boost::signals2::signal<void (Event_T const&)> EventHandler;
			typedef AS::Functional::TSimpleEvent<EventHandler> SimpleEvent;
			typedef SimpleEvent KeyDownSimpleEvent;
			typedef SimpleEvent KeyPressSimpleEvent;
			typedef SimpleEvent MouseButtonDownSimpleEvent;
			typedef boost::function<void (Event_T const&)> EventDelegate;
			typedef std::list<EventDelegate> EventDelegateCollection;
			typedef boost::function<void ()> PaintDelegate;
			typedef std::list<PaintDelegate> PaintDelegateCollection;
			CViewComponent();
			virtual ~CViewComponent() = 0;
			virtual CColor const& GetBackgroundColor() const;
			virtual CPosition const& GetGlobalPosition();
			virtual int const& GetOpacity() const;
			virtual CViewComponent* GetParent();
			virtual CPosition const& GetPosition() const;
			virtual CSize const& GetSize() const;
			virtual void Paint() = 0;
			virtual void ProcessEvent(Event_T const& event) = 0;
			virtual void RegisterEventDelegates(EventDelegateCollection& delegates) = 0;
			virtual void RegisterPaintDelegates(PaintDelegateCollection& delegates) = 0;
			virtual void SetBackgroundColor(CColor const& color);
			virtual void SetBackgroundImage(std::string const& file);
			virtual void SetOpacity(int percent);
			virtual void SetParent(CViewComponent* parent);
			virtual void SetPosition(CPosition const& position);
			virtual void SetSize(CSize const& size);
			virtual void Show() = 0; // TODO: Move it to CView class.
			KeyDownSimpleEvent KeyDown;
			KeyPressSimpleEvent KeyPress;
			MouseButtonDownSimpleEvent MouseButtonDown;
		public:
			virtual void RecalculatePositions();
		private:
			friend class CViewComponent;
			void CalculateGlobalPosition();
			void CalculateDrawArea();
			bool HitTest(CVector2d point);
			CViewComponent* m_pParent;
			CPosition m_LocalPosition; // Local position.
			CPosition m_Point1; // Global draw x1,y1 point - precalculated for Paint procedure.
			CPosition m_GlobalPosition; // Global position from left upper window corner.
			CSize m_Size;
			CColor m_BackgroundColor;
			int m_Opacity;
			int m_KeyPressed;
			bool m_Hitted;
			unsigned int m_BackgroundImageId;
			EventHandler m_KeyDownEventHandler;
			EventHandler m_KeyPressEventHandler;
			EventHandler m_MouseButtonDownEventHandler;
		};

		class CViewComposite : public AS::Compositing::TComposite<CViewComponent>
		{
		public:
			CViewComposite();
			virtual ~CViewComposite();
			virtual void Add(std::auto_ptr<CViewComponent> viewComponent);
			virtual void Paint();
			virtual void ProcessEvent(Event_T const& event);
			virtual void RegisterEventDelegates(EventDelegateCollection& delegates);
			virtual void RegisterPaintDelegates(PaintDelegateCollection& delegates);
			virtual void Show();
		public:
			virtual void RecalculatePositions();
		private:
			friend class CViewComponent;
			friend class CViewComposite;
			std::vector<EventDelegate> m_EventDelegates;
			std::vector<PaintDelegate> m_PaintDelegates;
		};

		class CViewLeaf : public AS::Compositing::TLeaf<CViewComponent>
		{
		public:
			CViewLeaf();
			virtual ~CViewLeaf();
			virtual void Paint();
			virtual void ProcessEvent(Event_T const& event);
			virtual void RegisterEventDelegates(EventDelegateCollection& delegates);
			virtual void RegisterPaintDelegates(PaintDelegateCollection& delegates);
			virtual void Show();
		public:
			virtual void RecalculatePositions();
		private:
			friend class CViewComponent;
			friend class CViewLeaf;
		};
	}
}

#endif // AS_VIEWS_VIEW_COMPONENTS_INCLUDE