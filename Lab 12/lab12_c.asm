
_MSDelay:

;lab12_c.c,1 :: 		void MSDelay(int Time)
;lab12_c.c,4 :: 		for(i=0;i<Time;i++)
	CLRF       R1+0
	CLRF       R1+1
L_MSDelay0:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_MSDelay_Time+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__MSDelay9
	MOVF       FARG_MSDelay_Time+0, 0
	SUBWF      R1+0, 0
L__MSDelay9:
	BTFSC      STATUS+0, 0
	GOTO       L_MSDelay1
;lab12_c.c,6 :: 		for(j=0;j<20;j++);
	CLRF       R3+0
	CLRF       R3+1
L_MSDelay3:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__MSDelay10
	MOVLW      20
	SUBWF      R3+0, 0
L__MSDelay10:
	BTFSC      STATUS+0, 0
	GOTO       L_MSDelay4
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
	GOTO       L_MSDelay3
L_MSDelay4:
;lab12_c.c,4 :: 		for(i=0;i<Time;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;lab12_c.c,7 :: 		}
	GOTO       L_MSDelay0
L_MSDelay1:
;lab12_c.c,8 :: 		}
L_end_MSDelay:
	RETURN
; end of _MSDelay

_main:

;lab12_c.c,10 :: 		void main() {
;lab12_c.c,11 :: 		TRISC = 0x00; //Set portc as output
	CLRF       TRISC+0
;lab12_c.c,12 :: 		TRISD = 0x00; //Set portd as output
	CLRF       TRISD+0
;lab12_c.c,14 :: 		while(1)
L_main6:
;lab12_c.c,16 :: 		portd = 0b10000000;         //
	MOVLW      128
	MOVWF      PORTD+0
;lab12_c.c,17 :: 		portc = 0x00;
	CLRF       PORTC+0
;lab12_c.c,18 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	MOVLW      0
	MOVWF      FARG_MSDelay_Time+1
	CALL       _MSDelay+0
;lab12_c.c,20 :: 		portd = 0b01000000;
	MOVLW      64
	MOVWF      PORTD+0
;lab12_c.c,21 :: 		portc = 0xC3;
	MOVLW      195
	MOVWF      PORTC+0
;lab12_c.c,22 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	MOVLW      0
	MOVWF      FARG_MSDelay_Time+1
	CALL       _MSDelay+0
;lab12_c.c,24 :: 		portd = 0b00100000;
	MOVLW      32
	MOVWF      PORTD+0
;lab12_c.c,25 :: 		portc = 0xC3;
	MOVLW      195
	MOVWF      PORTC+0
;lab12_c.c,26 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	MOVLW      0
	MOVWF      FARG_MSDelay_Time+1
	CALL       _MSDelay+0
;lab12_c.c,28 :: 		portd = 0b00010000;
	MOVLW      16
	MOVWF      PORTD+0
;lab12_c.c,29 :: 		portc = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;lab12_c.c,30 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	MOVLW      0
	MOVWF      FARG_MSDelay_Time+1
	CALL       _MSDelay+0
;lab12_c.c,32 :: 		portd = 0b00001000;
	MOVLW      8
	MOVWF      PORTD+0
;lab12_c.c,33 :: 		portc = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;lab12_c.c,34 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	MOVLW      0
	MOVWF      FARG_MSDelay_Time+1
	CALL       _MSDelay+0
;lab12_c.c,36 :: 		portd = 0b00000100;
	MOVLW      4
	MOVWF      PORTD+0
;lab12_c.c,37 :: 		portc = 0xC3;
	MOVLW      195
	MOVWF      PORTC+0
;lab12_c.c,38 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	MOVLW      0
	MOVWF      FARG_MSDelay_Time+1
	CALL       _MSDelay+0
;lab12_c.c,40 :: 		portd = 0b00000010;
	MOVLW      2
	MOVWF      PORTD+0
;lab12_c.c,41 :: 		portc = 0xC3;
	MOVLW      195
	MOVWF      PORTC+0
;lab12_c.c,42 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	MOVLW      0
	MOVWF      FARG_MSDelay_Time+1
	CALL       _MSDelay+0
;lab12_c.c,44 :: 		portd = 0b00000001;
	MOVLW      1
	MOVWF      PORTD+0
;lab12_c.c,45 :: 		portc = 0x00;
	CLRF       PORTC+0
;lab12_c.c,46 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	MOVLW      0
	MOVWF      FARG_MSDelay_Time+1
	CALL       _MSDelay+0
;lab12_c.c,48 :: 		}
	GOTO       L_main6
;lab12_c.c,49 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
