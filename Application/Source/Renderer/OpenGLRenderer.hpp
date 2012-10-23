#ifndef AS_RENDERING_OPENGL_RENDERER_INCLUDE
	#define AS_RENDERING_OPENGL_RENDERER_INCLUDE

#include <boost/utility.hpp>
#include <boost/function.hpp>
#include <list>
#include <vector>

namespace AS
{
	namespace Rendering
	{
		class COpenGLRenderer : boost::noncopyable
		{
		public:
			COpenGLRenderer();
			typedef boost::function<void ()> RenderEventHandler;
			void Add(RenderEventHandler callback);
			int GetDisplayListId();
			void Initialize();
			void Render();
			void SetCamera();
		private:
			void Enable2d();
			void Disable2d();
			static int m_DisplayListId;
			std::list<RenderEventHandler> m_RenderingStack;
			double m_Height;
			double m_Width;
			double m_FovY;
			float m_ScreenAspectRatio;
			int m_FramesPerSecond;
			unsigned m_FrameRate;
			unsigned m_Ticks;
		};
		extern std::vector<boost::function<void ()> > _2dPaintDelegates;
		extern std::vector<boost::function<void ()> > _3dPaintDelegates;
	}
}

#endif // AS_RENDERING_OPENGL_RENDERER_INCLUDE