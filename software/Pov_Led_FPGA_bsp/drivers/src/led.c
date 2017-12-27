#include "unistd.h"
#include "led.h"
#include "priv/alt_busy_sleep.h"
#include "alt_types.h"

extern alt_u32 led_controller_addr;

void led_allclose()
{
	IOWR_LED_CONTROL(led_controller_addr,1);
	IOWR_LED_DATA(led_controller_addr,1);
}

void led_allopen()
{
	IOWR_LED_CONTROL(led_controller_addr,1);
	IOWR_LED_DATA(led_controller_addr,0);
} 



