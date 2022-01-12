int vib_pin=2;
int led_pin=5;

void setup() 
{
  pinMode(vib_pin,INPUT);
  pinMode(led_pin,OUTPUT);
}

void loop() 
{
  int val;
  val=digitalRead(vib_pin);
  if(val==1)
  {
    digitalWrite(led_pin,HIGH);
   }
   else
   digitalWrite(led_pin,LOW);
}
// KARTHIK M N - 211039037
