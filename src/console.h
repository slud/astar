#ifndef AS_CONSOLE_H
	#define AS_CONSOLE_H

#include <vector>

// TODO: Add smart pointers.
class CConsoleSingleton
{
public:
	enum EOutput
	{
		e_cerr,
		e_cout,
		e_clog
	};

	// TODO: Is singleton required here? Maybe static methods would be enough?
	static inline CConsoleSingleton* Instance()
	{
		// We could use RAII with static data and return a reference,
		// but it has something in common with "static fiasco".
		// So for now I decided to use pointer.

		//if(!m_pInstance) m_pInstance = new T;
		//return m_pInstance;
		return m_pInstance ? m_pInstance : (m_pInstance = new CConsoleSingleton);
	}

	void Transmit(EOutput out, const char* text);

	/**
	 *	Do something with the message.
	 *	Using EOutput instead of ostream to avoid includes of stream libs.
	 */
	void Transmit(EOutput out, const char* tab[], int count);

	// TODO: If I want to typedef the latter parameter,
	// how can user know what type of object does it holds?
	void Transmit(EOutput out, std::vector<const char*> const& col);

private:
	CConsoleSingleton() {};
	~CConsoleSingleton() {};
	CConsoleSingleton(CConsoleSingleton const&);
	CConsoleSingleton& operator=(CConsoleSingleton const&);
	static CConsoleSingleton* m_pInstance;
};


#endif
