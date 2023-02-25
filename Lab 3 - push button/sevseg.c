void main() {
     char led[] ={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
     int i=0;
     TRISB=0x00;
     TRISD=0xff;
     PORTB=0xff;
     while(1)
     {
            portb = led[i];
            delay_ms(100);

            if(portd.f0==0 && i<=9)
            {
             delay_ms(100);
             if(portd.f0==0 && i<=9)
             {
             if(i==9)
             {
              i=-1;
             }
              i++;
             }
            }
             if(portd.f1==0 && i<=9)
            {
             delay_ms(100);
             if(portd.f1==0 && i<=9)
             {
             if(i==0)
             {
              i=10;
             }
              i--;
             }
            }
     
     }
}