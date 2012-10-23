#ifndef AS_VIEWS_TYPES_INCLUDE
	#define AS_VIEWS_TYPES_INCLUDE

namespace AS
{
	namespace Views
	{
		class CColor
		{
		public:
			CColor(float r=0.25f, float g=0.25f, float b=0.25f) : Red(r), Green(g), Blue(b)	{}
			float Red;
			float Green;
			float Blue;
		};

		class CVector2d
		{
		public:
			CVector2d(int x=0, int y=0) : X(x), Y(y) {}
			int X;
			int Y;
			CVector2d operator+(CVector2d const& position) const
			{
				return CVector2d(X+position.X, Y+position.Y);
			}
		};

		class CPosition
		{
		public:
			CPosition(int x=0, int y=0) : X(x), Y(y) {}
			int X;
			int Y;
			CPosition operator+(CPosition const& position) const
			{
				return CPosition(X+position.X, Y+position.Y);
			}
		};

		class CSize
		{
		public:
			CSize(int width=400, int height=400) : Height(height), Width(width) {}
			int Height;
			int Width;
		};
	}
}

#endif // AS_VIEWS_TYPES_INCLUDE