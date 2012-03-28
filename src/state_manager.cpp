#include "state_manager.h"
#include "event_handler.h"


CApplicationStateManagerSingleton::CApplicationStateManagerSingleton() :
	m_eCurrentState(e_MainWindow),
	EventHandlerDelegate(CEventHandlerMainWindow())
{
	
}
