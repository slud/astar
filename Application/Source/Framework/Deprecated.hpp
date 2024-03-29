#ifndef AS_DEPRECATED_INCLUDE
	#define AS_DEPRECATED_INCLUDE

#ifdef __GNUC__
	#define DEPRECATED(func) func __attribute__ ((deprecated))
#elif defined(_MSC_VER)
	#define DEPRECATED(func) __declspec(deprecated) func
#else
	#pragma message("WARNING: You need to implement DEPRECATED for this compiler")
	#define DEPRECATED(func) func
#endif

// References
// [DEP1] C++ mark as deprecated - http://stackoverflow.com/questions/295120/c-mark-as-deprecated

#endif // AS_DEPRECATED_INCLUDE