#line 1 "C:/Users/IMRAN/OneDrive/Desktop/ICE-3108__2/Lab 11/lab11_c.c"
void main() {
 TRISD = 0x00;
 PORTD = 0x00;
 while(1)
 {
 portd = 0b00001001;
 delay_ms(500);
 portd = 0b00001100;
 delay_ms(500);
 portd = 0b00000110;
 delay_ms(500);
 portd = 0b00000011;
 delay_ms(500);
 }
}
