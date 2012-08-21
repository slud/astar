#include "Renderer.hpp"

AS::Rendering::CRenderer<AS::Rendering::COpenGLRenderer>::CRenderer()
{
}

AS::Rendering::CRenderer<AS::Rendering::COpenGLRenderer>::Initialize()
{
	m_Renderer.Initialize();
}

AS::Rendering::CRenderer<AS::Rendering::COpenGLRenderer>::Render()
{
	m_Renderer.Render();
}


