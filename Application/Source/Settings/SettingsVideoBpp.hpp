/**
 *  class header template version 1
 * 
 *  @file name
 *  Brief description.
 *  Details description.
 */

// LICENSE

#ifndef AS_SETTINGS_VIDEO_BPP_H
    #define AS_SETTINGS_VIDEO_BPP_H

// INCLUDES

#include <boost/shared_ptr.hpp>

// MACROS

namespace Settings
{
    namespace Video
    {
        /**
         *  Class description.
         */
        class CBPP
        {
        public:

        // TYPES

        // LIFECYCLE

            CBPP();
            virtual ~CBPP();

        // OPERATORS

        // METHODS

            int GetValue() const;
            int SetValue(int value);

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

            CBPP(CBPP const&);

        // OPERATORS

            CBPP& operator=(CBPP const&);

        // METHODS

        // DATA

            int m_Value;
            
            boost::shared_ptr<CBPPImpl> m_pImpl;

        };

    } // NS Video
} // NS Settings

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_SETTINGS_VIDEO_BPP_H




