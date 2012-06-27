/**
 *  Class header template version 3 - increases
 *  each time this template changes.
 * 
 *  @file name
 *  Brief description.
 *  Details description.
 */

// LICENSE

#ifndef AS_MAIN_LOOP_INCLUDE
    #define AS_MAIN_LOOP_INCLUDE

// INCLUDES

// 1. Corresponded header file
// 2. Necessary project headers
// 3. 3rd party libraries headers
// 4. Standard libraries headers
// 5. System headers

// MACROS

/**
 *  CMainLoop
 *  This is a design pattern "Metoda szablonowa".
 *  Mind definitions:
 *  1. Constructor.
 *  2. Copy constructor.
 *  3. Virtual destructor.
 *  4. Assignment operator.
 */
class CMainLoop
{
public:

// TYPES

// LIFECYCLE

	virtual ~CMainLoop();

// OPERATORS

// METHODS

	virtual void Loop() = 0;

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	virtual void Events();
	virtual void Update();
	virtual void Render();

// DATA

private:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

};

void RegisterEventHandler();

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_MAIN_LOOP_INCLUDE




