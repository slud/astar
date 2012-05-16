/**
 *  @file Component.hpp
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_COMPONENT_INC
    #define AS_COMPONENT_INC

// INCLUDES


/**
 *  Class description.
 */
template<class T>
class CComponent
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

    /**
     *  Add a child.
     */
    virtual void Add(CComponent<T>&) = 0;

    /**
     *  Remove a child.
     */
    virtual void Remove(CComponent<T>&) = 0;

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

private:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

};

// REFERENCES

#endif // AS_COMPONENT_INC




