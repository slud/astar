/**
 *  @file ComponentImpl.hpp
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_COMPONENT_IMPL_INC
    #define AS_COMPONENT_IMPL_INC

// INCLUDES

#include <memory>
#include <string>
#include <cassert>

// MACROS

/**
 *  Class description.
 */
template<class T>
class TComponentImpl
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

    /**
     *  Access through an index operator.
     *  @param A name of the component.
     *  @return A child with a given name.
     */
    virtual T&                    operator[](std::string const&)
    {
        assert(0);
        return m_Instance;
    }

    /**
     *  Access through an index operator.
     *  @warning It's volatile!
     *  @param Position of a component.
     *  @return A child with a given name.
     */
    virtual T&                    operator[](int)
    {
        assert(0);
        return m_Instance;
    }

// METHODS

    /**
     *  Add a child.
     *  Transfer the ownership.
     */
    virtual void                  Add(std::auto_ptr<T>)
    {
        assert(0);
    }

    /**
     *  Get the number of children.
     *  @return Returns children count.
     */
    virtual int                   GetCount() const
    {
        assert(0);
        return -1;
    }

    /**
     *  Get index of the component.
     *  @warning It's volatile!
     *  @return Returns index of the component.
     */
    virtual int                   GetIndex() const
    {
        assert(0);
        return -1;
    }

    /**
     *  Get the name of the component.
     *  @return Returns name of the component.
     */
    virtual std::string const&    GetName() const
    {
        return m_Name;
    }

    /**
     *  Remove a child.
     */
    virtual void                  Remove(T&)
    {
        assert(0);
    }

    virtual void                  Remove(std::string const&)
    {
        assert(0);
    }

    virtual void                  Remove(int)
    {
        assert(0);
    }

    /**
     *  Set the name of the component.
     *  @param name New component's name.
     */
    virtual void                  SetName(std::string const& name)
    {
        m_Name = name;
    }

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

    T m_Instance;
    std::string m_Name;

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_COMPONENT_IMPL_INC




