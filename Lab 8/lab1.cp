#line 1 "E:/BOOK/ICE-3-1/ICE-3108/Lab Test and Code/Lab 8/lab1.c"
void main() {
 TRISB = 0x00;
 PORTB = 0x00;
 while(1)
 {
 portb.f0 = 1;
 delay_ms(100);
 portb.f0 = 0;
 delay_ms(100);
 }

}
