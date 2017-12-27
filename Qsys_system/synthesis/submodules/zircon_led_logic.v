module zircon_led_logic
(
	//ʱ�Ӹ�λ
	csi_clk,rsi_reset_n,
	//�û��߼����������
	led_data,led_control,
	//����ܽ����
	coe_led
);

input         		csi_clk;	//ϵͳʱ��
input         		rsi_reset_n;//ϵͳ��λ
input 		[ 7:0]	led_data;	//led���ݼĴ���
input 				led_control;//led���ƼĴ���
output reg	[ 7:0]	coe_led;	//led�ӿڹܽ�

reg			[ 7:0]	coe_led_r;	//led�ӿڹܽŵļĴ���

//ʱ���·��������led�ӿڹܽŽ��и�ֵ
always @(posedge csi_clk or negedge rsi_reset_n )
begin
    if(!rsi_reset_n)			//�жϸ�λ
		coe_led <= 8'hff;		//��ʼ��led�ӿڹܽ�Ϊ0xff��LEDȫ��
	else
		coe_led <= coe_led_r;	//������led�ӿڹܽŸ�ֵ
end

//��ϵ�·������ʵ��ledӲ���߼�����
always @ (*)
begin
	if(led_control)				//�ж�led���ƼĴ���
		coe_led_r = led_data;	//���led���ƼĴ���ʹ�ܴ򿪣��������led���ݼĴ�������
	else
		coe_led_r = coe_led;	//���򣬽����ֲ���
end

endmodule 