#ifndef AS_COMPOSITING_TLEAF_INCLUDE
	#define AS_COMPOSITING_TLEAF_INCLUDE

#include "Common/Common.hpp"
#include "Framework/Assert.hpp"
#include "Component.hpp"
#include <exception>

namespace AS
{
	namespace Compositing
	{
		const char c_InvalidOperation[] = "Invalid operation.";

		template<class T>
		class TLeaf : public T
		{
		public:
			virtual T& operator[](std::string const& name)
			{
				throw std::exception(c_InvalidOperation);
			}

			virtual T& operator[](int index)
			{
				throw std::exception(c_InvalidOperation);
			}

			virtual void Add(std::auto_ptr<T> component)
			{
				throw std::exception(c_InvalidOperation);
			}

			virtual int GetCount() const
			{
				throw std::exception(c_InvalidOperation);
			}

			virtual void Remove(T& component)
			{
				throw std::exception(c_InvalidOperation);
			}

			virtual void Remove(std::string const& name)
			{
				throw std::exception(c_InvalidOperation);
			}

			virtual void Remove(int index)
			{
				throw std::exception(c_InvalidOperation);
			}
		};
	} // ns Compositing
} // ns AS

#endif // AS_COMPOSITING_TLEAF_INCLUDE
