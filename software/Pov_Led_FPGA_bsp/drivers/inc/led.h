#ifndef __LED_H__
#define __LED_H__

#include "system.h"
#include "alt_types.h"
#include "led_regs.h"

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

void led_allclose();
void led_allopen();

/* Macros used by alt_sys_init */
#define LED_INSTANCE(name, dev) alt_u32 led_controller_addr = name##_BASE
#define LED_INIT(name, dev) while(0)   


#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* __LED_H__ */
