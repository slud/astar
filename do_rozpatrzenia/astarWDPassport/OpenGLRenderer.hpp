#ifndef AS_RENDERING_OPENGL_RENDERER_INCLUDE
	#define AS_RENDERING_OPENGL_RENDERER_INCLUDE

#include <boost/utility.hpp>
#include <boost/function.hpp>
#include <list>

namespace AS
{
	namespace Rendering
	{
		class COpenGLRenderer : boost::noncopyable
		{
		public:
			typedef boost::function<void ()> RenderEventHandler;
			void Add(RenderEventHandler callback);
			void Initialize();
			void Render();
		private:
			std::list<RenderEventHandler> m_RenderingStack;
		};		
	}
}

#endif // AS_RENDERING_OPENGL_RENDERER_INCLUDE