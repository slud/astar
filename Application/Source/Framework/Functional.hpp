#ifndef AS_FUNCTIONAL_INCLUDE
	#define AS_FUNCTIONAL_INCLUDE

#include <boost/signals2.hpp>

namespace AS
{
	namespace Functional
	{
		// I created this class to not put signal in public interface.
		// So the user won't be able to manipulate connections and so on.
		template<typename T>
		class TSimpleEvent // Facade
		{
		public:
			typedef typename T::slot_type SlotType;
			TSimpleEvent(T& signal) : m_signal(signal) {}
			boost::signals2::connection Connect(SlotType const& subscriber)
			{
				return m_signal.connect(subscriber);
			}
		private:
			T& m_signal;
		};
	}
}

#endif // AS_FUNCTIONAL_INCLUDE