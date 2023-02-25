char led[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main() {
     int i = 0;
     TRISB = 0x00;
     portb = 0x00;
     while(1)
     {
             portb = led[i];
             delay_ms(1000);
             i++;
             if(i==10) {
                  i = 0; }


     }

}