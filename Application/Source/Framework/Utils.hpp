#ifndef AS_UTILS_INCLUDE
    #define AS_UTILS_INCLUDE

#include <boost/lexical_cast.hpp>

namespace AS
{
	namespace Utils
	{
		class CUtils
		{
		public:
			template<class To, class From>
			static To Convert(From const& data);
		};
	} // ns Utils
} // ns AS

template<class To, class From>
To AS::Utils::CUtils::Convert(From const& data)
{
    try
    {
        return boost::lexical_cast<To>(data);
    }
    catch(boost::bad_lexical_cast &)
    {
        // In case of a failure return default value.
        return To();
    }   
}

#endif // AS_UTILS_INCLUDE




