#ifndef __MY9262_REGS_H__
#define __MY9262_REGS_H__

#include <io.h>

#define IOWR_MY9262_CONTROL(base,data) IOWR(base,0,data)

#define IOWR_MY9262_DATA(base,data) IOWR(base,1,data)

#endif