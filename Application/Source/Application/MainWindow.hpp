/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_MAIN_WINDOW_INCLUDE
	#define AS_MAIN_WINDOW_INCLUDE

// INCLUDES

#include "Framework/ASSDL.hpp"

namespace AS
{
	namespace System
	{
		/**
		 *	Window + OGL + SDL.
		 */
		class CMainWindow
		{
		public:

		// TYPES

		// LIFECYCLE

			CMainWindow();
			virtual ~CMainWindow();

		// OPERATORS

		// METHODS

			virtual void ProcessEvent(Event_T const&);

			void Shutdown();

			void Start();

		// DATA

		protected:

		// TYPES

		// LIFECYCLE

		// OPERATORS

		// METHODS

		// DATA

		private:

		// TYPES

		// LIFECYCLE

			CMainWindow(CMainWindow const&);

		// OPERATORS

			CMainWindow& operator=(CMainWindow const&);

		// METHODS

			void Initialize();

			void SwitchToFullscreen();

		// DATA

			SDL_Surface*			m_pDisplay;   // Memory managed by the SDL.
			const SDL_VideoInfo*	m_pVideoInfo; // Memory managed by the SDL.

			int						m_VideoFlags;

		};

} // ns System

} // ns AS

// REFERENCES

#endif // AS_MAIN_WINDOW_INCLUDE




