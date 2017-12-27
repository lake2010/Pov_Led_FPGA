module zircon_led
(
	//ʱ�Ӹ�λ
	csi_clk,rsi_reset_n,
	//Avalon-MM�Ӷ˿�
	avs_address,avs_write,avs_writedata,
	//����ܽ����
	coe_led
);

input         		csi_clk;			//ϵͳʱ��
input         		rsi_reset_n;		//ϵͳ��λ
input 		[ 1:0]	avs_address;		//Avalon��ַ����
input				avs_write;			//Avalonд������
input		[31:0]	avs_writedata;		//Avalonд��������
output 		[ 7:0]	coe_led;  			//led�ӿڹܽ�

wire 		[ 7:0]	led_data;			//led���ݼĴ���
wire				led_control;		//led���ƼĴ���

//Ӳ���߼��ļ�
zircon_led_logic	zircon_led_logic_init
(
	.csi_clk		(csi_clk		),	//ϵͳʱ��
	.rsi_reset_n	(rsi_reset_n	),	//ϵͳ��λ
	.led_data		(led_data		),	//led���ݼĴ���
	.led_control	(led_control	),	//led���ƼĴ���
	.coe_led		(coe_led		)	//led�ӿڹܽ�
);

//�Ĵ����ļ�
zircon_led_register	zircon_led_register_init
(
	.csi_clk		(csi_clk		),	//ϵͳʱ��
	.rsi_reset_n	(rsi_reset_n	),	//ϵͳ��λ
	.avs_address	(avs_address	),	//Avalon��ַ����
	.avs_write		(avs_write		),	//Avalonд������
	.avs_writedata	(avs_writedata	),	//Avalonд��������
	.led_data		(led_data		),	//led���ݼĴ���
	.led_control	(led_control	)	//led���ƼĴ���
);

endmodule
