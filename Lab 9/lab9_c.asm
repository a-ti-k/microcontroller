
_main:

;lab9_c.c,17 :: 		void main() {
;lab9_c.c,20 :: 		trisa = 0xff;
	MOVLW      255
	MOVWF      TRISA+0
;lab9_c.c,21 :: 		lcd_init();
	CALL       _Lcd_Init+0
;lab9_c.c,22 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lab9_c.c,23 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lab9_c.c,25 :: 		while(1)
L_main0:
;lab9_c.c,27 :: 		result = adc_read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;lab9_c.c,28 :: 		volt = result*4.88;
	CALL       _int2double+0
	MOVLW      246
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
;lab9_c.c,29 :: 		temp = volt/10;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      main_temp_L0+0
	MOVF       R0+1, 0
	MOVWF      main_temp_L0+1
	MOVF       R0+2, 0
	MOVWF      main_temp_L0+2
	MOVF       R0+3, 0
	MOVWF      main_temp_L0+3
;lab9_c.c,30 :: 		lcd_out(1,1,"Temp=");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_lab9_c+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lab9_c.c,31 :: 		floattostr(temp,disp);
	MOVF       main_temp_L0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       main_temp_L0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       main_temp_L0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       main_temp_L0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _disp+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;lab9_c.c,32 :: 		lcd_out_cp(disp);
	MOVLW      _disp+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;lab9_c.c,33 :: 		lcd_chr(1,15,223);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;lab9_c.c,34 :: 		lcd_out_cp("C");
	MOVLW      ?lstr2_lab9_c+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;lab9_c.c,35 :: 		}
	GOTO       L_main0
;lab9_c.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
