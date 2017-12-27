module Pov_Led_FPGA
(
	RST_N,											//复位端口
   CLK_24M,											//晶振接口
	HAL249,											//霍尔传感器
	EPCS_DATA0,EPCS_DCLK,EPCS_SCE,EPCS_SDO,//Flash下载接口	
	my9262_Lat,my9262_Dclk,my9262_Gck,my9262_Di,//my9262控制接口
	Led
);

//---------------------------------------------------------------------------
//--    外部端口声明
//---------------------------------------------------------------------------
input                CLK_24M;
input                RST_N;
input                HAL249;

input           		EPCS_DATA0;
output			 		EPCS_DCLK;
output			 		EPCS_SCE;
output			 		EPCS_SDO;

output           	my9262_Lat;
output           	my9262_Dclk; 
output           	my9262_Gck;                             
output          	my9262_Di;
output     		   Led;
//---------------------------------------------------------------------------
//--    内部端口声明
//---------------------------------------------------------------------------
wire        			CLK_100M;
wire        			CLK_240M;
//---------------------------------------------------------------------------
//--    逻辑功能实现  
//---------------------------------------------------------------------------
PLL     					PLL_Init 
(
   .inclk0      		(CLK_24M    ),
   .c0          		(CLK_100M   ),
	.c1 					(CLK_240M	)
);

//---------------------------------------------------------------------------

Qsys_system      		Qsys_system_Init 
(
   .clk_clk     			(CLK_100M 	), //clk.clk
   .reset_reset_n			(RST_N    	), //reset.reset_n
   .hal249_export 		(HAL249    	), //pio_key.export
	.epcs_flash_dclk 		(EPCS_DCLK  ), //epcs_flash.dclk
	.epcs_flash_sce   	(EPCS_SCE   ), //.sce                        
	.epcs_flash_sdo 		(EPCS_SDO   ), //.sdo
	.epcs_flash_data0 	(EPCS_DATA0 ), //.data0
   .my9262_clk_240m  	(CLK_240M	), //my9262.clk_240m	
	.my9262_my9262_Lat 	(my9262_Lat	), //my9262.Lat
	.my9262_my9262_Dclk  (my9262_Dclk), //.Dclk
	.my9262_my9262_Gck   (my9262_Gck	), //.Gck
	.my9262_my9262_Di    (my9262_Di	), //.Di	
	.led_export          (Led			)  //led.export
);


endmodule
