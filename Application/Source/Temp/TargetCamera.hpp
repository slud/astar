#ifndef AS_SPACE_TARGET_CAMERA_INCLUDE
	#define AS_SPACE_TARGET_CAMERA_INCLUDE

#include <boost/numeric/ublas/vector.hpp>
#include <boost/numeric/ublas/io.hpp>

namespace AS
{
	namespace Space
	{
		template<class T, int N>
		class TTargetCamera
		{
		public:
			boost::numeric::ublas::vector<T, boost::numeric::ublas::bounded_array<T,N> > Location;
			boost::numeric::ublas::vector<T, boost::numeric::ublas::bounded_array<T,N> > Eye;
			double far;
			double near;
		};
	}
}

#endif // AS_SPACE_TARGET_CAMERA_INCLUDE