#ifndef AS_FRAMEWORK_MATH_INCLUDE
	#define AS_FRAMEWORK_MATH_INCLUDE

#include <iostream>

namespace AS
{
	namespace Math
	{
		enum EVectorCoordinatesBindings
		{
			e_X = 0,
			e_Y = 1,
			e_Z = 2,
			e_W = 3
		};

		template<class T, int Size>
		class TVector // Aware of boost::array. Learning purposes.
		{
		public:
			TVector() {}
			TVector(T const array[Size])
			{
				for(int i=0; i<Size; i++) m_Array[i] = array[i];
			}
			TVector(TVector<T, Size> const& other)
			{
				for(int i=0; i<Size; i++)
				{
					m_Array[i] = other.m_Array[i];
				}
			}
			TVector<T, Size> operator+(TVector<T, Size> const& other)
			{
				TVector<T, Size> Temp;
				for(int i=0; i<Size; i++)
				{
					Temp[i] = m_Array[i] + other.m_Array[i];
				}
				return Temp;
			}
			TVector<T, Size> operator-(TVector<T, Size> const& other)
			{
				TVector<T, Size> Temp;
				for(int i=0; i<Size; i++)
				{
					Temp[i] = m_Array[i] - other.m_Array[i];
				}
				return Temp;
			}
			template<class U>
			T& operator[](U index)
			{
				return m_Array[index];
			}
			operator T*() { return m_Array; }
			int size() const { return Size; }
		private:
			friend bool operator==(TVector<T, Size> const& first, TVector<T, Size> const& second);
			friend std::ostream& operator<<(std::ostream&, TVector<T, Size> const&);
			T m_Array[Size];
		};

		template<class T>
		bool operator==(T const& first, T const& second)
		{
			bool Equal = true;
			if(first.size()==second.size())
			{
				for(int i=0; i<first.size(); i++)
				{
					if(m_Array[i] != other.m_Array[i])
					{
						Equal = false;
						break;
					}
				}
			}
			else
			{
				Equal = false;
			}
			return Equal;
		}

		bool operator==(TVector<int,2> const& first, TVector<int,2> const& second) // TODO: Vectors equality requirements.
		{
			bool Equal = true;
			if(first.size()==second.size())
			{
				for(int i=0; i<first.size(); i++)
				{
					if(first.m_Array[i] != second.m_Array[i])
					{
						Equal = false;
						break;
					}
				}
			}
			else
			{
				Equal = false;
			}
			return Equal;
		}

		template<class T>
		std::ostream& operator<<(std::ostream& first, T const& second)
		{
			for(int i=0; i<second.size(); i++)
			{
				first << second.m_Array[i];
				if(i!=second.size()-1)
					first << " ";
			}
			return first;
		}
	}
}

#endif // AS_FRAMEWORK_MATH_INCLUDE