#ifndef AS_RENDERING_RENDERER_INCLUDE
	#define AS_RENDERING_RENDERER_INCLUDE

#include <boost/function.hpp>
#include <list>

namespace AS
{
	namespace Rendering
	{
		extern std::list<boost::function<void ()> > g_2dStack;
		extern std::list<boost::function<void ()> > g_3dStack;

		template<class T>
		class CRenderer
		{
		public:
			typedef boost::function<void ()> RenderEventHandler;
			CRenderer();
			void Add(RenderEventHandler callback);
			void Initialize();
			void Render();
		private:
			T m_Renderer;
		};

		template<class T>
		CRenderer<T>::CRenderer()
		{
		}

		template<class T>
		void CRenderer<T>::Add(RenderEventHandler callback)
		{
			m_Renderer.Add(callback);
		}

		template<class T>
		void CRenderer<T>::Initialize()
		{
			m_Renderer.Initialize();
		}

		template<class T>
		void CRenderer<T>::Render()
		{
			m_Renderer.Render();
		}
	}
}

#endif // AS_RENDERING_RENDERER_INCLUDE