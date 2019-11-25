# Lab 09
## 실습 내용
### *리모컨 송신 신호**
#### **Sub Module :  ir_rx** : clk_1M 이 1'b1 일때마다 high(2'b11)일때와 low(2'b00)일때를 각각 1씩 증가하도록 해주고 0에서 1(2'b01)로 갈때 리셋을 시켜준다.  
#### 또한 리셋일때는 IDLE상태로 리셋시켜주고, LEADCODE일때는 cnt_h가 8500이상이고 cnt_l가 4000이상이면 DATACODE가 시작되고 그 외에는 DATACODE로 된다. 또한 DATACODE가 시작되면 마지막 rising edge이고 cnt_l이 1000보다 크면 COMPLETE상태가 되고 그 외이면 DATACODE상태이다. 또한 COMPLETE 일때는 IDLE로 돌아온다.
#### 따라서 leader code에서 9ms후에 edge가 전환되고 다시 4.5ms 후에 edge가 전환된다.
#### **Top Module** : ir_rx와 저번시간에 만든 fnd_dec와 led_disp를 이용하여  실습 장비의 LED에 맞는 Display Module 설계
### FPGA 실습 : 리모컨 동작에 따른 display확인 

![](https://github.com/RyuJinHa/LogicDesign/blob/master/practice09/%EC%BA%A1%EC%B2%98.PNG)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTExNzcxNTI0NiwtNzQ3MjAwMzYzXX0=
-->
