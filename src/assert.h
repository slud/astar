#ifndef AS_ASSERT_H
	#define AS_ASSERT_H

#ifdef _DEBUG

extern bool CustomAssertFunction(bool, char*, int, char*, bool*);

// Guarantees inlining :-)
#define Assert(exp, description) \
	{ \
		static bool ignoreAlways = false; \
		if(!ignoreAlways) \
		{ \
			if(CustomAssertFunction(static_cast<int>((exp)), (description), __LINE__, __FILE__, &ignoreAlways)) \
			{ \
				_asm { int 3 } \
			} \
	}

#endif

#endif
