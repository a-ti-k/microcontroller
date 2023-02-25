
_main:

;lab1.c,1 :: 		void main() {
;lab1.c,2 :: 		TRISB = 0x00;      //set portb as output
	CLRF       TRISB+0
;lab1.c,3 :: 		PORTB = 0x00;       //Initial value is zero
	CLRF       PORTB+0
;lab1.c,4 :: 		while(1)
L_main0:
;lab1.c,6 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;lab1.c,7 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;lab1.c,8 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;lab1.c,9 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;lab1.c,10 :: 		}
	GOTO       L_main0
;lab1.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
