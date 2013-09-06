#ifndef AS_RENDERER_HELPERS_INCLUDE
#define AS_RENDERER_HELPERS_INCLUDE

namespace AS
{
	namespace Renderer
	{
		namespace Helpers
		{
			class CCube
			{
			public:
				CCube(float length = 1);
				void Draw();
				void DrawAlt();
				void Initialize();
				void SetLength(float length);
			private:
				void Make(float length);				
				int m_DisplayListId;
				float m_Length;
			};
		}
	}
}

#endif // AS_RENDERER_HELPERS_INCLUDE