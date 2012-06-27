/**
 *  @file Composite.hpp
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_COMPOSITE_INC
    #define AS_COMPOSITE_INC

// INCLUDES

#include "Component.hpp"

#include "Common/Common.hpp"

#include <list>
#include <string>
#include <cassert>

/**
 *  Class description.
 */
template
<
    class T,
    class Col = std::list
>
class CComposite : public CComponent<T>
{
public:

// TYPES

// LIFECYCLE

    virtual ~CComposite();

// OPERATORS

// METHODS

    /**
     *  Add a child.
     */
    virtual void Add(CComponent<T>&);

    /**
     *  Remove a child.
     */
    virtual void Remove(CComponent<T>&);

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

    typedef Col<CComponent<T>*> ComponentsCollection;
    ComponentsCollection m_Components;

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

template<class T, class Col>
CComposite<T, class Col>::~CComposite()
{
    typename ComponentsCollection::iterator it;
    for(it = m_Components.begin(); it != m_Components.end(); it++)
    {
        delete *it; // Free memory.
    }
}

template<class T, class Col>
void CComposite<T, Col>::Add(CComponent<T>& component)
{
    //std::string name(component.GetName());
    //assert(name.length());
    //if(name.length() > 0)
    //{
        int Return = m_Components.erase(name);
        assert(!Return && "Component already existed. Replaced.");
        m_Components[name] = &component;
    //}
}

template<class T, class Col>
void CComposite<T, Col>::Remove(CComponent<T>& component)
{
    //m_ComponentsMap.erase(component.GetName());
}


// REFERENCES

#endif // AS_COMPOSITE_INC




