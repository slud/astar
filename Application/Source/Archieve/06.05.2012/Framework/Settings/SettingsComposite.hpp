/**
 *  @file SettingsComposite.hpp
 *  Declaration of a CSettingsComposite class.
 */

// LICENSE

#ifndef AS_SETTINGS_COMPOSITE_INC
    #define AS_SETTINGS_COMPOSITE_INC

// INCLUDES

#include "SettingsComponent.hpp"

/**
 *  CSettingsComposite
 */
class CSettingsComposite : public CSettingsComponent
{
public:

// TYPES

// LIFECYCLE

        CSettingsComposite();

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
        virtual ~CSettingsComposite() = 0;

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
        CSettingsComposite(CSettingsComposite const&);

// OPERATORS

        /**
         *  Assignment operator.
         *  No copying allowed.
         *  @param Reference to object to assign from.
         *  @return Returns reference to this object.
         */
        CSettingsComposite&                operator=(CSettingsComposite const&);

// METHODS

// DATA

    typedef std::map<std::string, CSettingsComponent*> ComponentsMap;
    ComponentsMap m_ComponentsMap;

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_SETTINGS_COMPOSITE_H




