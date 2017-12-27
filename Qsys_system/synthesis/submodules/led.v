module led
(
	csi_clk,rsi_reset_n,
	avs_address,avs_write,avs_writedata,
	coe_led
);

input         			csi_clk;			
input         			rsi_reset_n;		
input 		[ 1:0]	avs_address;		
input						avs_write;		
input			[31:0]	avs_writedata;	
output 					coe_led;  		

wire 						led_data;		
wire						led_control;		


led_logic	led_logic_init
(
	.csi_clk			(csi_clk			),	
	.rsi_reset_n	(rsi_reset_n	),	
	.led_data		(led_data		),	
	.led_control	(led_control	),	
	.coe_led			(coe_led			)	
);

led_register	led_register_init
(
	.csi_clk			(csi_clk			),	
	.rsi_reset_n	(rsi_reset_n	),	
	.avs_address	(avs_address	),
	.avs_write		(avs_write		),	
	.avs_writedata	(avs_writedata	),	
	.led_data		(led_data		),
	.led_control	(led_control	)
);

endmodule
