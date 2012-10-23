#include "ValueTypeTest.hpp"
#include "Common/Common.hpp"

// Registers the fixture into the 'registry'
CPPUNIT_TEST_SUITE_REGISTRATION( AS::Common::CValueTypeTest );


void AS::Common::CValueTypeTest::setUp()
{
}


void AS::Common::CValueTypeTest::tearDown()
{
}


void AS::Common::CValueTypeTest::TestCanBeInt()
{
	int T1 = 1;
	int T2 = int(2);
	int T3(3);
	int T4;
	T4 = T3;
	int T5 = 5;
	T5 = 55;
	int* T6 = &T5;
	int& T7 = *T6;

	TValueType<int> Tvi1 = 1;
	TValueType<int> Tvi2 = TValueType<int>(2);
	TValueType<int> Tvi3(3);
	TValueType<int> Tvi4;
	Tvi4 = Tvi3;
	TValueType<int> Tvi5 = 5;
	Tvi5 = 55;
	TValueType<int>* Tvi6 = &Tvi5;
	TValueType<int>& Tvi7 = *Tvi6;
	int T8 = Tvi7 + 8 + *Tvi6 + 9 + 10 + Tvi1 + Tvi2;
}