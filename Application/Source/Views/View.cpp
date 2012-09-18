#include "View.hpp"

AS::Views::CView::CView()
{
}

AS::Views::CView::~CView()
{
}

AS::Views::EModalityLevel AS::Views::CView::GetModalityLevel() const
{
	return e_Self;
}
