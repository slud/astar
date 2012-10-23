#include "MathTest.hpp"
#include "Framework/Math/Math.hpp"
#include <iostream>

// Registers the fixture into the 'registry'
CPPUNIT_TEST_SUITE_REGISTRATION( AS::Math::CVectorTest );

namespace
{
	const int Size = 2;
	void TakeAndPrintTVectorAsArray(int array[]) {}
}

void AS::Math::CVectorTest::setUp()
{
}


void AS::Math::CVectorTest::tearDown()
{
}


void AS::Math::CVectorTest::Test0()
{
	TVector<int,3> Vec1;
	TVector<int,3> Vec2;
}

void AS::Math::CVectorTest::TestAddTwoVectors()
{
	TVector<int,Size> Vec1;
	Vec1[e_X] = 1;
	Vec1[e_Y] = 2;
	TVector<int,Size> Vec2;
	Vec2[e_X] = 6;
	Vec2[e_Y] = 7;
	TVector<int,Size> Vec3 = Vec1 + Vec2;
	CPPUNIT_ASSERT_EQUAL(7,Vec3[e_X]);
	CPPUNIT_ASSERT_EQUAL(9,Vec3[e_Y]);
}

void AS::Math::CVectorTest::TestConversionToArray()
{
	TVector<int,Size> Vec3;
	TakeAndPrintTVectorAsArray(Vec3); // TODO: How to pass in Size value?
}

void AS::Math::CVectorTest::TestCopyConstructor()
{
	TVector<int,Size> Vec1;
	for(int i=0; i<Size; i++) Vec1[i] = i;
	TVector<int,Size> Vec2 = Vec1;
	bool Temp = Vec1 == Vec2; // Generating function from template.
	//CPPUNIT_ASSERT_EQUAL(Vec1, Vec2); - Somehow it is not working.
	for(int i=0; i<Size; i++)
	{
		CPPUNIT_ASSERT_EQUAL(Vec1[i], Vec2[i]);
	}
}

void AS::Math::CVectorTest::TestDefaultConstructors()
{
	TVector<float,Size> Vec1; // Default.
}

void AS::Math::CVectorTest::TestParametrizedConstructors()
{
	float LocalArray[Size];
	for(int i=0; i<Size; i++)
	{
		LocalArray[i] = static_cast<float>(i);
	}
	TVector<float,Size> Vec2(LocalArray);
	for(int i=0; i<Size; i++)
	{
		CPPUNIT_ASSERT_EQUAL(LocalArray[i], Vec2[i]);
	}
}

void AS::Math::CVectorTest::TestSubstractTwoVectors()
{
	TVector<int,Size> Vec1;
	Vec1[e_X] = 1;
	Vec1[e_Y] = 2;
	TVector<int,Size> Vec2;
	Vec2[e_X] = 6;
	Vec2[e_Y] = 7;
	TVector<int,Size> Vec3 = Vec1 - Vec2;
	CPPUNIT_ASSERT_EQUAL(-5,Vec3[e_X]);
	CPPUNIT_ASSERT_EQUAL(-5,Vec3[e_Y]);
}