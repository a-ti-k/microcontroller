void main() {
     TRISB = 0x00;       //Set portb as output
     portb = 0x00;       //Initialize portb as off condition due to CC type display
     while(1)
     {
         portb.f0 = 1;
         delay_ms(1000);
         portb.f0 = 0;
         delay_ms(1000);
     }
}