#include <iostream>

class Abstract
{
protected:
	void Abstract() const = 0;
}

class ca
{
public:
	static int i;
};

int ca::i = 6;

class cb : public ca
{
};

class cc : public ca
{
public:
	static int i;
};

int cc::i = 19;

int main()
{
	cb b;
	cc c;

	std::cout << "b.i = " << b.i << std::endl;
	std::cout << "c.i = " << c.i << std::endl;
	std::cout << "{b,c}.i++" << std::endl;
	b.i++;
	c.ca::i++;
	std::cout << "b.i = " << b.i << std::endl;
	std::cout << "c.i = " << c.i << std::endl;

	return 0;
}

