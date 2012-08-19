#ifndef AS_RENDERING_RENDERER_INCLUDE
	#define AS_RENDERING_RENDERER_INCLUDE

#include "SDL_opengl.h"
#include <boost/utility.hpp>

namespace AS
{
	namespace Rendering
	{
		class COpenGLRenderer : boost::noncopyable
		{
		private:
			//friend class CRenderer<COpenGLRenderer>;
		public:
			void Initialize()
			{
				//Initialize Projection Matrix
				glMatrixMode( GL_PROJECTION );
				glLoadIdentity();
				//Initialize Modelview Matrix
				glMatrixMode( GL_MODELVIEW );
				glLoadIdentity();
				//Initialize clear color
				glClearColor( 0.f, 0.f, 0.f, 1.f );
			}
		};

		template<class T>
		class CRenderer
		{
		public:
			void Initialize()
			{
				//m_Renderer.Initialize();
				//Initialize Projection Matrix
				glMatrixMode( GL_PROJECTION );
				glLoadIdentity();
				//Initialize Modelview Matrix
				glMatrixMode( GL_MODELVIEW );
				glLoadIdentity();
				//Initialize clear color
				glClearColor( 0.f, 0.f, 0.f, 1.f );
			}
			void Render()
			{
				glClear( GL_COLOR_BUFFER_BIT );
				glBegin( GL_QUADS );
					glVertex2f( -0.5f, -0.5f );
					glVertex2f(  0.5f, -0.5f );
					glVertex2f(  0.5f,  0.5f );
					glVertex2f( -0.5f,  0.5f );
				glEnd();
				SDL_GL_SwapBuffers();
			}
		private:
			T m_Renderer;
		};
	}
}

#endif // AS_RENDERING_RENDERER_INCLUDE