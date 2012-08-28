#include "Renderer.hpp"
#include "OpenGLRenderer.hpp"
#include <vector>

namespace AS
{
	namespace Rendering
	{
		extern std::vector<PaintDelegate> g_2dPaintDelegates;
		extern std::vector<PaintDelegate> g_3dPaintDelegates;
	}
}

void AS::Rendering::Register2dPaintHandler(PaintDelegate const& delegate)
{
	g_2dPaintDelegates.push_back(delegate);
}

void AS::Rendering::Register3dPaintHandler(PaintDelegate const& delegate)
{
	g_3dPaintDelegates.push_back(delegate);
}