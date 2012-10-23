#include "Renderer.hpp"
#include "OpenGLRenderer.hpp"
#include <vector>

void AS::Rendering::Register2dPaintHandler(PaintDelegate const& delegate)
{
	_2dPaintDelegates.push_back(delegate);
}

void AS::Rendering::Register3dPaintHandler(PaintDelegate const& delegate)
{
	_3dPaintDelegates.push_back(delegate);
}