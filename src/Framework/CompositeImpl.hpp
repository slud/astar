/**
 *  @file CompositeImpl.hpp
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_COMPOSITE_IMPL_INC
    #define AS_COMPOSITE_IMPL_INC

// INCLUDES

#include "ComponentImpl.hpp"

#include "Common/Common.hpp"

#include <boost/shared_ptr.hpp>

#include <string>
#include <map>
#include <cassert>

// MACROS

/**
 *  Class description.
 */
template<class T>
class TCompositeImpl : public TComponentImpl<T>
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
    virtual T& operator[](std::string const& name)
    {
        typename ComponentsCollection::iterator it = m_Components.find(name);

        if(it == m_Components.end())
        {
            assert(0);
        }

        return *(it->second);
    }

    /**
     *  Access through an index operator.
     *  @warning It's volatile!
     *  @param Position of a component.
     *  @return A child with a given name.
     */
    virtual T& operator[](int index)
    {
        assert(index < 0 && "Wrong index value.");
        assert(static_cast<size_t>(index) >= m_Components.size() && "Index is out of range.");

        typename ComponentsCollection::iterator it = m_Components.begin();

        for(int i=0; i <= index; i++)
        {
            it++;
        }

        return *(it->second);
    }

// METHODS

    /**
     *  Add a child.
     *  Transfer the ownership.
     */
    virtual void Add(std::auto_ptr<T> component)
    {
        assert(component.get() != nullptr);

        int Return = m_Components.erase(component->GetName());
        assert(!((bool)Return) && "Component already existed. Replaced.");

        m_Components[component->GetName()] = component;
    }

    /**
     *  Get the number of children.
     *  @return Returns children count.
     */
    virtual int GetCount() const
    {
        return static_cast<size_t>(m_Components.size());
    }

    /**
     *  Get index of the component.
     *  @warning It's volatile!
     *  @return Returns index of the component.
     */
    virtual int GetIndex() const
    {
        assert(0);
        return -1;
    }

    /**
     *  Get the name of the component.
     *  @return Returns name of the component.
     */
    virtual std::string const& GetName() const
    {
        return m_Name;
    }

    /**
     *  Remove a child.
     */
    virtual void Remove(T& component)
    {
        m_Components.erase(component.GetName());
    }

    virtual void Remove(std::string const& name)
    {
        m_Components.erase(name);
    }

    virtual void Remove(int index)
    {
        assert(index < 0 && "Wrong index value.");
        assert(static_cast<size_t>(index) >= m_Components.size() && "Index is out of range.");

        typename ComponentsCollection::iterator it = m_Components.begin();

        for(int i=0; i <= index; i++)
        {
            it++;
        }

        m_Components.erase(it);

    }

    /**
     *  Set the name of the component.
     *  @param name New component's name.
     */
    virtual void SetName(std::string const& name)
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

    typedef std::map<std::string, boost::shared_ptr<T> > ComponentsCollection;
    ComponentsCollection m_Components;
    T m_Instance;
    std::string m_Name;

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_COMPOSITE_IMPL_INC




