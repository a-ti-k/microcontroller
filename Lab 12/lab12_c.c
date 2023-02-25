void MSDelay(int Time)
{
     int i,j;
     for(i=0;i<Time;i++)
     {
           for(j=0;j<20;j++);
     }
}

void main() {
     TRISC = 0x00; //Set portc as output
     TRISD = 0x00; //Set portd as output
     
     while(1)
     {
          portd = 0b10000000;
          portc = 0x00;
          MSDelay(10);
          
          portd = 0b01000000;
          portc = 0xC3;
          MSDelay(10);
          
          portd = 0b00100000;
          portc = 0xC3;
          MSDelay(10);
          
          portd = 0b00010000;
          portc = 0xff;
          MSDelay(10);
          
          portd = 0b00001000;
          portc = 0xff;
          MSDelay(10);
          
          portd = 0b00000100;
          portc = 0xC3;
          MSDelay(10);
          
          portd = 0b00000010;
          portc = 0xC3;
          MSDelay(10);
          
          portd = 0b00000001;
          portc = 0x00;
          MSDelay(10);
          
     }
}