#ifndef PosteRazorImageIO_h
#define PosteRazorImageIO_h

#include "DistanceUnits.h"

class PosteRazorImageIO
{
public:
	virtual ~PosteRazorImageIO() {};
	static PosteRazorImageIO* CreatePosteRazorImageIO(const char* imgFileName);

	virtual int GetWidthPixels(void) = 0;
	virtual int GetHeightPixels(void) = 0;

	virtual double GetHorizontalDotsPerDistanceUnit(enum DistanceUnits::eDistanceUnits unit) = 0;
	virtual double GetVerticalDotsPerDistanceUnit(enum DistanceUnits::eDistanceUnits unit) = 0;

	virtual double GetWidth(enum DistanceUnits::eDistanceUnits unit) = 0;
	virtual double GetHeight(enum DistanceUnits::eDistanceUnits unit) = 0;
};

#endif