module led_logic
(
	csi_clk,rsi_reset_n,
	led_data,led_control,
	coe_led
);

input         			csi_clk;	
input         			rsi_reset_n;
input 					led_data;
input 					led_control;
output reg				coe_led;
reg						coe_led_r;


always @(posedge csi_clk or negedge rsi_reset_n )
begin
	if(!rsi_reset_n)		
		coe_led <= 1'h1;		
	else
		coe_led <= coe_led_r;	
end


always @ (*)
begin
	if(led_control)			
		coe_led_r = led_data;	//����led���ƼĴ���ʹ�ܴ򿪣���������led���ݼĴ�������
	else
		coe_led_r = coe_led;	
end

endmodule 