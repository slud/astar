#include <iostream>
#include <boost/timer/timer.hpp>
#include <boost/function.hpp>

using namespace boost::timer;
//using boost::timer::cpu_times;
//using boost::timer::nanosecond_type;

const long long c_1kns = 1000000000LL;

const int c_int = 2;

const long long c_exp = 10;

class timerek
{
public:
	timerek() :
		m_interval(new nanosecond_type(c_int*c_1kns)),
		m_expire(new nanosecond_type(c_exp*c_1kns)),
		m_last(new nanosecond_type(0)),
		m_elapsed(new nanosecond_type(0))
	{}

	boost::function<void()> onTick;

	void start()
	{
		cpu_timer timer;
		while(*m_elapsed<*m_expire)
		{
			cpu_times elapsed_times(timer.elapsed());
			nanosecond_type elapsed_now(elapsed_times.system + elapsed_times.user);
			if(elapsed_now >= (*m_elapsed + *m_interval))
			{
				*m_elapsed += *m_interval;
				//std::cout << format(elapsed_times) << std::endl;
				std::cout << elapsed_times.user << std::endl;
				onTick();
			}
		}
	}

	void SetInterval(int seconds) { *m_interval = seconds * c_1kns; }
	void SetExpireTime(int seconds) { *m_expire = seconds * c_1kns; }

private:
	nanosecond_type*       m_interval;
	nanosecond_type*       m_last;
	nanosecond_type*       m_expire;
	nanosecond_type*       m_elapsed;
	//cpu_timer*            timer;
};

void msg()
{
	std::cout << "I run every " << c_int << " seconds." << std::endl;
}

int main()
{
	timerek t1;
	t1.SetInterval(c_int);
	t1.SetExpireTime(c_exp);
	t1.onTick = msg;
	t1.start();
	return 0;
}
