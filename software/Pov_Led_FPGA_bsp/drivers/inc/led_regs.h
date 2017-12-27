#ifndef __LED_REGS_H__
#define __LED_REGS_H__

#include <io.h>

#define IOWR_LED_CONTROL(base,data)		IOWR(base,0,data)
#define IOWR_LED_DATA(base,data)		IOWR(base,1,data)

#endif
