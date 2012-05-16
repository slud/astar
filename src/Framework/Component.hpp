/**
 *  @file Component.hpp
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_COMPONENT_INC
    #define AS_COMPONENT_INC

// INCLUDES

#include "ComponentImpl.hpp"
#include "CompositeImpl.hpp"
#include "LeafImpl.hpp"
#include <boost/smart_ptr.hpp>
#include <memory>
#include <string>

// MACROS

/**
 *  Component class template.
 *  TODO: Ctor, dtor, copy ctor, assignment operator
 *  should be defined in T for T and here for template<T>?
 */
template<class T>
class TComponent
{
public:

// TYPES

// LIFECYCLE

    TComponent() :
        m_pImpl(0)
    {

    }
    
    virtual ~TComponent()
    {
    }

// OPERATORS

    /**
     *  Access through an index operator.
     *  @param A name of the component.
     *  @return A child with a given name.
     */
    virtual T&                    operator[](std::string const&);

    /**
     *  Access through an index operator.
     *  @warning It's volatile!
     *  @param Position of a component.
     *  @return A child with a given name.
     */
    virtual T&                    operator[](int);

// METHODS

    /**
     *  Add a child.
     *  Transfer the ownership.
     */
    virtual void                  Add(std::auto_ptr<T>);

    /**
     *  Get the number of children.
     *  @return Returns children count.
     */
    virtual int                   GetCount();

    /**
     *  Get index of the component.
     *  @warning It's volatile!
     *  @return Returns index of the component.
     */
    virtual int                   GetIndex();

    /**
     *  Get the name of the component.
     *  @return Returns name of the component.
     */
    virtual std::string const&    GetName();

    /**
     *  Remove a child.
     */
    virtual void                  Remove(T&);
    virtual void                  Remove(std::string const&);
    virtual void                  Remove(int);

    /**
     *  Set the name of the component.
     *  @param name Sets name of the component.
     */
    virtual void                  SetName(std::string const& name);

// DATA

protected:

// TYPES

    enum EComponentType
    {
        e_Component,
        e_Leaf,
        e_Composite
    };

// LIFECYCLE

// OPERATORS

// METHODS

    /**
     *  Make the distinction between leaf and composite.
     *  This method shouldn't be public because
     *  the idea of composite pattern is that those
     *  objects are transparent to the user.
     *  Providing the information through this method
     *  we can decide which implemetation to use.
     *  @return Type of the component.
     */
    virtual EComponentType GetComponentType() const = 0;

// DATA

private:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

    /**
     *  Gets the default implementation.
     */
    TComponentImpl<T>* GetPimpl();

    /**
     *  Sets the default implementation.
     *  @return Unrelevant value. Used only for one-time call.
     */
    int SetPimpl();

// DATA

    /**
     *  We provide different implementations for Component,
     *  Leaf and Composite classes.
     *  We cannot use inheritance together with templates
     *  because it changes our inheritance hierarchy.
     *  Instead we reuse the code by static composition - 
     *  simply by creating a member object where we delegate
     *  our calls.
     */
    boost::scoped_ptr<TComponentImpl<T> > m_pImpl;

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

template<class T>
TComponentImpl<T>* TComponent<T>::GetPimpl()
{
    /*
    std::cout << "GetPimpl (inside) begin" << std::endl;
    std::cout << "Hi. My name is " << "null" << std::endl;
    std::cout << "My type is " << typeid(this).name() << std::endl;
    */
    
    if(!m_pImpl)
    {
        SetPimpl();
    }
    
    assert(m_pImpl);
    
    //std::cout << "GetPimpl (inside) end" << std::endl;
    return m_pImpl.get();
}

template<class T>
int TComponent<T>::SetPimpl()
{
    switch(GetComponentType())
    {
    case e_Composite:
        m_pImpl.reset(new TCompositeImpl<T>);
            //std::cout << "GetComponentType: composite" << std::endl;
        break;
    case e_Leaf:
        m_pImpl.reset(new TLeafImpl<T>);
            //std::cout << "GetComponentType: leaf" << std::endl;
        break;
    default:
        assert(0);
    }
    return 0;
}

template<class T>
T& TComponent<T>::operator[](std::string const& name)
{
    return GetPimpl()->operator[](name);
}

template<class T>
T& TComponent<T>::operator[](int index)
{
    return GetPimpl()->operator[](index);
}

template<class T>
void TComponent<T>::Add(std::auto_ptr<T> component)
{
    GetPimpl()->Add(component);
}

template<class T>
int TComponent<T>::GetCount()
{
    return GetPimpl()->GetCount();
}

template<class T>
int TComponent<T>::GetIndex()
{
    return GetPimpl()->GetIndex();
}

template<class T>
std::string const& TComponent<T>::GetName()
{
    return GetPimpl()->GetName();
}

template<class T>
void TComponent<T>::Remove(T& component)
{
    GetPimpl()->Remove(component);
}

template<class T>
void TComponent<T>::Remove(std::string const& name)
{
    GetPimpl()->Remove(name);
}

template<class T>
void TComponent<T>::Remove(int index)
{
    GetPimpl()->Remove(index);
}

template<class T>
void TComponent<T>::SetName(std::string const& name)
{
    GetPimpl()->SetName(name);
}

// REFERENCES

#endif // AS_COMPONENT_INC




