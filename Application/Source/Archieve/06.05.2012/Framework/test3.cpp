#include <iostream>

class Ex1
{
public:
	Ex1() :
		m_Name("I'm Ex1\n")
	{
	}

	std::string const& WhoAmI() const
	{
		return m_Name;
	}

private:
	std::string m_Name;
};

int a = 5;

int& f()
{
	Ex1 e;
	throw e;
	return a;
}


int main()
{
	try
	{
		f();
	}
	catch( Ex1 const& ex1 )
	{
		std::cerr << ex1.WhoAmI();
	}

	return 0;

}
