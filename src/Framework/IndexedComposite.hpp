/**
 *  @file IndexedComposite.hpp
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_INDEXED_COMPOSITE_INC
    #define AS_INDEXED_COMPOSITE_INC

// INCLUDES

#include "IndexedComponent.hpp"
#include "Common/Common.hpp"

#include <map>
#include <string>
#include <cassert>

/**
 *  Class description.
 */
template<class T, class Index = std::string>
class CIndexedComposite : public T
{
public:

// TYPES

// LIFECYCLE

    CIndexedComposite();
    
    virtual ~CIndexedComposite();

// OPERATORS

    /**
     *  Access through a index operator.
     *  @return A child with a given name.
     */
    virtual T& operator[](Index const& accessor);

// METHODS

    /**
     *  Add a child.
     */
    virtual void Add(T&);
    
    virtual Index const& GetIndex() const;

    /**
     *  Remove a child.
     */
    virtual void Remove(T&);

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

    typedef std::map<Index, T*> ComponentsCollection;
    ComponentsCollection m_Components;
    Index m_Index;

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

template<class T, class Index>
CIndexedComposite<T, Index>::CIndexedComposite() :
    T()
{
}

template<class T, class Index>
CIndexedComposite<T, Index>::~CIndexedComposite()
{
    typename ComponentsCollection::iterator it;
    for(it = m_Components.begin(); it != m_Components.end(); it++)
    {
        delete (*it).second; // Free memory.
    }
}

template<class T, class Index>
T& CIndexedComposite<T, Index>::operator[](Index const& accessor)
{
    typename ComponentsCollection::iterator it = m_Components.find(accessor);
    T* Component = nullptr;
    if(it != m_Components.end())
    {
        Component = it->second;
    }

    return *Component;
}

template<class T, class Index>
void CIndexedComposite<T, Index>::Add(T& component)
{
    Index accessor(component.GetIndex());
    int Return = m_Components.erase(accessor);
    assert(!((bool)Return) && "Component already existed. Replaced.");
    m_Components[accessor] = &component;
}

template<class T, class Index>
Index const& CIndexedComposite<T, Index>::GetIndex() const
{
    return m_Index;
}

template<class T, class Index>
void CIndexedComposite<T, Index>::Remove(T& component)
{
    m_Components.erase(component.GetIndex());
}


// REFERENCES

#endif // AS_INDEXED_COMPOSITE_INC




