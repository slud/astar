/**
 *  @file IndexedComponent.hpp
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_INDEXED_COMPONENT_INC
    #define AS_INDEXED_COMPONENT_INC

// INCLUDES

#include <string>

/**
 *  Class description.
 */
template<class T, class Index = std::string>
class CIndexedComponent
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

    /**
     *  Access through an index operator.
     *  @return A child with a given name.
     */
    virtual T& operator[](Index const& accessor) = 0;

// METHODS

    /**
     *  Add a child.
     */
    virtual void Add(T&) = 0;

    /**
     *  Get name of the component.
     * 
     *  @return Returns name of the component.
     */
    virtual Index const& GetIndex() const = 0;

    /**
     *  Remove a child.
     */
    virtual void Remove(T&) = 0;

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

#endif // AS_INDEXED_COMPONENT_INC




