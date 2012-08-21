#ifndef AS_RENDERING_RENDERER_INCLUDE
	#define AS_RENDERING_RENDERER_INCLUDE

namespace AS
{
	namespace Rendering
	{
		template<class T>
		class CRenderer
		{
		public:
			CRenderer();
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