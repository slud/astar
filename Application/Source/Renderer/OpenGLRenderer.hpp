#ifndef AS_RENDERING_OPENGL_RENDERER_INCLUDE
	#define AS_RENDERING_OPENGL_RENDERER_INCLUDE

#include <boost/utility.hpp>

namespace AS
{
	namespace Rendering
	{
		class COpenGLRenderer : boost::noncopyable
		{
		public:
			void Initialize();
			void Render();
		};		
	}
}

#endif // AS_RENDERING_OPENGL_RENDERER_INCLUDE