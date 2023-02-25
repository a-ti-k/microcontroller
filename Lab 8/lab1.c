void main() {
    TRISB = 0x00;      //set portb as output
    PORTB = 0x00;       //Initial value is zero
    while(1)
    {
        portb.f0 = 1;
        delay_ms(100);
        portb.f0 = 0;
        delay_ms(100);
    }

}