module zircon_led_register
(
	//ʱ�Ӹ�λ
	csi_clk,rsi_reset_n,
	//Avalon-MM�Ӷ˿�
	avs_address,avs_write,avs_writedata,
	//�û��߼����������
	led_data,led_control
);
 
input 				csi_clk;		//ϵͳʱ��
input				rsi_reset_n;	//ϵͳ��λ
input		[ 1:0]	avs_address;	//Avalon��ַ����
input				avs_write;		//Avalonд������
input		[31:0]	avs_writedata;	//Avalonд��������
output reg	[ 7:0]	led_data;		//led���ݼĴ���
output reg 			led_control;	//led���ƼĴ���

reg 				led_control_r;	//led_control��һ��״̬
reg			[ 7:0]	led_data_r;		//led_data��һ��״̬

//ʱ���·��������led���ƼĴ������и�ֵ
always @ (posedge csi_clk or negedge rsi_reset_n)
begin
	if(!rsi_reset_n)							//�жϸ�λ
		led_control <= 1'b0;					//��ʼ��led���ƼĴ���
	else
		led_control <= led_control_r;			//������led���ƼĴ�����ֵ
end

//��ϵ�·����������ַƫ����0��Ҳ�������ǵ�led���ƼĴ���д����
always @ (*)
begin
	if((avs_write) && (avs_address == 2'b00))	//�ж�дʹ�ܺ͵�ַƫ����
		led_control_r = avs_writedata[0];		//���������������ô��д�����е�ֵ��ֵ��led���ƼĴ���
	else
		led_control_r = led_control;			//���򣬽����ֲ���
end
	
//ʱ���·��������led���ݼĴ������и�ֵ
always @ (posedge csi_clk or negedge rsi_reset_n)
begin
	if(!rsi_reset_n)							//�жϸ�λ
		led_data <= 8'hff;						//��ʼ��led���ݼĴ���
	else
		led_data <= led_data_r;					//������led���ݼĴ�����ֵ
end

//��ϵ�·����������ַƫ����1��Ҳ�������ǵ�led���ݼĴ���д����
always @ (*)
begin
	if((avs_write) && (avs_address == 2'b01))	//�ж�дʹ�ܺ͵�ַƫ����
		led_data_r = avs_writedata[7:0];		//���������������ô��д�����е�ֵ��ֵ��led���ݼĴ���
	else
		led_data_r = led_data;					//���򣬽����ֲ���
end

endmodule
