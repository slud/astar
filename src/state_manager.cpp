#include "state_manager.h"


CApplicationStateManagerSingleton::CApplicationStateManagerSingleton() :
	//m_pApplication(&Application),
	/m_eCurrentState(e_MainWindow)
	//EventHandlerDelegate(CMainWindowEventHandlerSingleton())
{
	
}

inline CApplicationStateManagerSingleton::EState CApplicationStateManagerSingleton::GetCurrentState() const
{
	return m_eCurrentState;
}

void CApplicationStateManager::RequestStateChange(EState NewState)
{
	if( m_eCurrentState != NewState )
	{
		switch(NewState)
		{
			case e_MainWindow:
				break;
			case e_MainMenu:
				break;
			case e_Edit:
				break;
			case e_Playing:
				break;
			case e_Paused:
				break;
			case e_Quit:
				// TODO: Consider finishing other pending tasks.
				//m_pApplication->Stop();
				break;
			default:
				break;
		}
	}
}
