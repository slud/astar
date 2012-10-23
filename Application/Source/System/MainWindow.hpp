#ifndef AS_SYSTEM_MAIN_WINDOW_INCLUDE
	#define AS_SYSTEM_MAIN_WINDOW_INCLUDE

#include "Framework/ASSDL.hpp"
#include "Views/View.hpp"
#include <boost/utility.hpp>

namespace AS
{
	namespace System
	{
		class CMainWindow : boost::noncopyable
		{
		public:
			CMainWindow();
			virtual ~CMainWindow();
			virtual void ProcessEvent(Event_T const&);
			virtual void Show();
		protected:
			virtual void Initialize();
			virtual void SwitchToFullscreen();
		private:
			SDL_Surface*			m_pDisplay;   // Memory managed by the SDL.
			const SDL_VideoInfo*	m_pVideoInfo; // Memory managed by the SDL.
			int						m_VideoFlags;
		};
	} // ns System
} // ns AS

#endif // AS_SYSTEM_MAIN_WINDOW_INCLUDE




