#ifndef AS_COMMON_INCLUDE
    #define AS_COMMON_INCLUDE

#define nullptr 0

namespace AS
{
	namespace Common
	{
		template<class T>
		class TValueType
		{
		public:
			TValueType() {}
			TValueType(T value) { m_Value = value; }
			TValueType(TValueType<T> const& other) { m_Value = other.m_Value; }
			void operator=(T value) { m_Value = value; }
			operator T() { return m_Value; }
		private:
			T m_Value;
		};
	}
}

#endif // AS_COMMON_INCLUDE




