#ifndef DOXYGEN_H
	#define DOXYGEN_H

/** @file doxygen.h
 *	Brief descr. of the file.
 *	Details goes here.
 */


/**
 *	Brief description goes here.
 *	Detailed description: Brief description ends after a dot and a space or new line.
 *
 */
class SomeClass
{
public:
	/**
	 * A constructor.
	 * Something more about ctor.
	 */
	SomeClass();

	/**
	 *	An enum type.
	 *	More detailed enum description.
	 */
	enum SomeEnum
	{
		e_Val1, /**< enum value 1. */
		e_Val2
	}
protected:
	/**
	 *	Method is method.
	 *	@param par_a an int value.
	 *	@param par_b a float value.
	 *	@see List here other things worth to notice.
	 *	@return Nothing to return.
	 */
	void SomeMethod(int par_a, float par_b);
private:
	int m_Member; /**< Detailed description after the member. */
};


#endif
