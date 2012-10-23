#include "NotifyStreamTest.hpp"
#include "Framework/NotifyStream.hpp"
#include <boost/smart_ptr.hpp>
#include <sstream>
#include <fstream>

// Registers the fixture into the 'registry'
CPPUNIT_TEST_SUITE_REGISTRATION( CNotifyStreamTest );


void CNotifyStreamTest::setUp()
{
}


void CNotifyStreamTest::tearDown()
{
}


void CNotifyStreamTest::Test1()
{
	//AS::CNotifyStringStream<std::stringstream> nss;
}

void CNotifyStreamTest::Test2()
{
	//boost::shared_ptr<std::stringstream> p(new std::stringstream);
	//AS::CNotifyStringStream<std::stringstream> nss(p);
}
