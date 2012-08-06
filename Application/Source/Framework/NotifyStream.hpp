#ifndef AS_NOTIFY_STREAM_INCLUDE
    #define AS_NOTIFY_STREAM_INCLUDE

#include <boost/smart_ptr.hpp>
#include <boost/signals2.hpp>
#include <sstream>
#include <fstream>

namespace AS
{
	// I created this class to not put signal in public interface.
	// So the user won't be able to manipulate connections and so on.
	template<typename T>
	class CSimpleEvent // Facade
	{
	public:
		typedef typename T::slot_type SlotType;
		CSimpleEvent(T& signal) : m_signal(signal) {}
		boost::signals2::connection Connect(SlotType const& subscriber)
		{
			return m_signal.connect(subscriber);
		}
	private:
		T& m_signal;
	};

	class CNotifyStream
	{
	public:
		typedef boost::signals2::signal<void (std::string const&)> TextChangedEventHandler;
		typedef CSimpleEvent<TextChangedEventHandler> TextChangedSimpleEvent;
		CNotifyStream() : TextChanged(m_Signal) {}
		TextChangedSimpleEvent TextChanged;
	protected:
		TextChangedEventHandler& GetTextChangedEventHandler() { return m_Signal; }
	private:
		TextChangedEventHandler m_Signal;
	};

	template<class T = std::ostream>
	class CNotifyOutputStream : public CNotifyStream // Malformed proxy, decorator, facade.
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

	template<class T = std::ofstream>
	class CNotifyOutputFileStream : public CNotifyOutputStream<T>
	{
	public:
		CNotifyOutputFileStream(T& stream) : CNotifyOutputStream(stream), m_Stream(stream) {}
		~CNotifyOutputFileStream() {}
		virtual CNotifyOutputStream& operator<<(std::string const& text)
		{
			if( m_Stream.is_open() )
			{
				m_Stream << text;
				GetTextChangedEventHandler()(text);
			}
			return *this;
		}
	private:
		T& m_Stream;
	};

} // ns AS

#endif // AS_NOTIFY_STREAM_INCLUDE




