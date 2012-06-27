/**
 *  @file SettingsComponent.hpp
 *  Declaration of a CSettingsComponent class.
 */

// LICENSE

#ifndef AS_SETTINGS_COMPONENT_INC
    #define AS_SETTINGS_COMPONENT_INC

// INCLUDES

#include "Framework/Component.hpp"

/**
 *  CSettingsComponent
 *  This is the abstract base class for settings components.
 *  It provides default implementation for methods
 *  to manage children. Invoking those methods on component
 *  that do not has children is an error.
 */
// We derive from CComponent<T> to distinguish components of menu, settings, widgets etc.
// Components are unique. 
// TODO: How to define a class with templated methods only.
class CSettingsComponent : public CComponent<CSettingsComponent>
{
public:

// TYPES

// LIFECYCLE

        CSettingsComponent();

// OPERATORS

        /**
         *  Access elements dynamicaly at runtime.
         *  @param name Name of the component. Invalid name is an error!
         *  @return Returns reference to component with given name.
         */
        virtual CSettingsComponent&        operator[](std::string const& name);

// METHODS

        virtual void                       Add(CSettingsComponent&);

        virtual std::string const&         GetName() const = 0;
        
        virtual void                       Remove(CSettingsComponent&);

// DATA

protected:

// TYPES

// LIFECYCLE

        /**
         *  It cannot be destroyed from outside.
         */
        virtual ~CSettingsComponent() = 0;

// OPERATORS

// METHODS

// DATA

private:

// TYPES

// LIFECYCLE

        /**
         *  Copy ctor.
         *  No copying allowed.
         *  @param Reference to object to copy from.
         */
        CSettingsComponent(CSettingsComponent const&);

// OPERATORS

        /**
         *  Assignment operator.
         *  No copying allowed.
         *  @param Reference to object to assign from.
         *  @return Returns reference to this object.
         */
        CSettingsComponent&                operator=(CSettingsComponent const&);

// METHODS

// DATA

    static const std::string m_EmptyString;

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_SETTINGS_COMPONENT_H




