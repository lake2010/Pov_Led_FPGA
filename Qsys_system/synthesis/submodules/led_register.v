module led_register
(
	csi_clk,rsi_reset_n,
	avs_address,avs_write,avs_writedata,
	led_data,led_control
);
 
input 					csi_clk;		
input						rsi_reset_n;
input			[ 1:0]	avs_address;	
input						avs_write;		
input			[31:0]	avs_writedata;	
output reg				led_data;	
output reg 				led_control;	

reg 						led_control_r;	
reg						led_data_r;		


always @ (posedge csi_clk or negedge rsi_reset_n)
begin
	if(!rsi_reset_n)				
		led_control <= 1'b0;			
	else
		led_control <= led_control_r;		
end


always @ (*)
begin
	if((avs_write) && (avs_address == 2'b00))	
		led_control_r = avs_writedata[0];		
	else
		led_control_r = led_control;	
end
	

always @ (posedge csi_clk or negedge rsi_reset_n)
begin
	if(!rsi_reset_n)					
		led_data <= 1'h1;		
	else
		led_data <= led_data_r;			
end


always @ (*)
begin
	if((avs_write) && (avs_address == 2'b01))	
		led_data_r = avs_writedata[0];		
	else
		led_data_r = led_data;
end

endmodule
