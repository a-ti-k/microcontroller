
_main:

;lab11_c.c,1 :: 		void main() {
;lab11_c.c,2 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;lab11_c.c,3 :: 		PORTD = 0x00;
	CLRF       PORTD+0
;lab11_c.c,4 :: 		while(1)
L_main0:
;lab11_c.c,6 :: 		portd = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;lab11_c.c,7 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;lab11_c.c,8 :: 		portd = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;lab11_c.c,9 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;lab11_c.c,10 :: 		portd = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;lab11_c.c,11 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;lab11_c.c,12 :: 		portd = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;lab11_c.c,13 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;lab11_c.c,14 :: 		}
	GOTO       L_main0
;lab11_c.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
