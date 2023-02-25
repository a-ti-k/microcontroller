
_main:

;lab7_c.c,1 :: 		void main() {
;lab7_c.c,2 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;lab7_c.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;lab7_c.c,4 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;lab7_c.c,6 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;lab7_c.c,7 :: 		portb.f1 = 0;
	BCF        PORTB+0, 1
;lab7_c.c,9 :: 		PWM1_Init(5000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      99
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;lab7_c.c,10 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;lab7_c.c,11 :: 		PWM1_Set_Duty(i);
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;lab7_c.c,12 :: 		while(1){
L_main0:
;lab7_c.c,13 :: 		if(portd.f0 == 1 && i<250){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      250
	SUBWF      main_i_L0+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main19:
;lab7_c.c,14 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;lab7_c.c,15 :: 		if(portd.f0 == 1 && i<250){
	BTFSS      PORTD+0, 0
	GOTO       L_main8
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      250
	SUBWF      main_i_L0+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main18:
;lab7_c.c,16 :: 		i = i+10;
	MOVLW      10
	ADDWF      main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	MOVF       R0+1, 0
	MOVWF      main_i_L0+1
;lab7_c.c,17 :: 		PWM1_Set_Duty(i);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;lab7_c.c,18 :: 		}
L_main8:
;lab7_c.c,19 :: 		}
L_main4:
;lab7_c.c,20 :: 		if(portd.f1 == 1 && i>0){
	BTFSS      PORTD+0, 1
	GOTO       L_main11
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
L__main17:
;lab7_c.c,21 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
;lab7_c.c,22 :: 		if(portd.f1 == 1 && i>0){
	BTFSS      PORTD+0, 1
	GOTO       L_main15
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
L__main16:
;lab7_c.c,23 :: 		i = i-10;
	MOVLW      10
	SUBWF      main_i_L0+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      main_i_L0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	MOVF       R0+1, 0
	MOVWF      main_i_L0+1
;lab7_c.c,24 :: 		PWM1_Set_Duty(i);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;lab7_c.c,25 :: 		}
L_main15:
;lab7_c.c,26 :: 		}
L_main11:
;lab7_c.c,28 :: 		}
	GOTO       L_main0
;lab7_c.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
