#ifndef __MY9262_H__
#define __MY9262_H__

#include "system.h"
#include "alt_types.h"
#include "my9262_regs.h"

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

void my9262WriteGrayscale(alt_u16 grayscale);

/* Macros used by alt_sys_init */
#define MY9262_INSTANCE(name, dev) alt_u32 my9262_addr = name##_BASE
#define MY9262_INIT(name, dev) while(0)

#ifdef __cplusplus

#endif /* __cplusplus */

#endif