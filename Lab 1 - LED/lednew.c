void main() {
     TRISB=0x00;
     PORTB=0xff;
     while(1)
     {
      portb.f0=1;
      delay_ms(1000);
      portb.f0=0;
      delay_ms(1000);
     }
}