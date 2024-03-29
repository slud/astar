#ifndef AS_NOTIFY_STREAM_INCLUDE
    #define AS_NOTIFY_STREAM_INCLUDE

#include <boost/smart_ptr.hpp>
#include <boost/signals2.hpp>
#include <sstream>
#include <fstream>

namespace AS
{
	namespace IO
	{
		class CNotifyStream
		{
		public:
			typedef boost::signals2::signal<void (std::string const&)> TextChangedEventHandler;
			typedef AS::Functional::CSimpleEvent<TextChangedEventHandler> TextChangedSimpleEvent;
			CNotifyStream() : TextChanged(m_Signal) {}
			TextChangedSimpleEvent TextChanged;
		protected:
			TextChangedEventHandler& GetTextChangedEventHandler() { return m_Signal; }
		private:
			TextChangedEventHandler m_Signal;
		};

		template<class T = std::ostream>
		class TNotifyOutputStream : public CNotifyStream // Malformed proxy, decorator, facade.
		{
		public:
			CNotifyOutputStream(T& stream) : m_Stream(stream) {}
			virtual CNotifyOutputStream& operator<<(std::string const& text)
			{
				m_Stream << text;
				GetTextChangedEventHandler()(text);
				return *this;
			}
			virtual CNotifyOutputStream& operator<<(int number)
			{
				std::ostringstream Tmp;
				Tmp << number;
				std::string TextNumber = Tmp.str();
				*this << TextNumber;
				return *this;
			}
		private:
			T& m_Stream;
		};
	} // ns IO
} // ns AS

#endif // AS_NOTIFY_STREAM_INCLUDE




