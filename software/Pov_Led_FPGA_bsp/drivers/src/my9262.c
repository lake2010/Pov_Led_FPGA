#include "unistd.h"

#include "my9262.h"
#include "priv/alt_busy_sleep.h"
#include "alt_types.h"

extern alt_u32 my9262_addr;


void my9262WriteGrayscale(alt_u16 grayscale)
{
	IOWR_MY9262_CONTROL(my9262_addr,1);
	IOWR_MY9262_DATA(my9262_addr, grayscale);
}
