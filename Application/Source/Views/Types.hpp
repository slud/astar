#ifndef AS_VIEWS_TYPES_INCLUDE
	#define AS_VIEWS_TYPES_INCLUDE

namespace AS
{
	namespace Views
	{
		class CColor
		{
		public:
			//CColor() {}
			CColor(int r=0, int g=0, int b=0) : Red(r), Green(g), Blue(b)	{}
			int Red;
			int Green;
			int Blue;
		};

		class CPosition
		{
		public:
			//CPosition() {}
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
			//CSize() {}
			CSize(int width=400, int height=400) : Height(height), Width(width) {}
			int Height;
			int Width;
		};
	}
}

#endif // AS_VIEWS_TYPES_INCLUDE