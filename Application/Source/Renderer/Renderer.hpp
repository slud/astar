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
			enum ECamera
			{
				e_Left,
				e_Right,
				e_Top,
				e_45
			};

			CRenderer();
			void Initialize();
			void Render();
			void SetCamera(ECamera camera);
		private:
			T m_Renderer;
		};
	}
}

#endif // AS_RENDERING_RENDERER_INCLUDE