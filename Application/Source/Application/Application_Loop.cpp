#include "Application.hpp"
#include "MainWindow.hpp"

void CApplication::Loop()
{
	m_Running = true;

	while( m_Running )
		Events();
}




