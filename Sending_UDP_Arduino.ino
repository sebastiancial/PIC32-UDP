#include <SPI.h>        
#include <Ethernet.h>
#include <EthernetUdp.h>

byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };

IPAddress ip(192,168,1,102);
IPAddress remote(192,168,1,101);

IPAddress mydns(192,168,1, 1);
IPAddress subnet(255, 255, 255, 0);
 // local port to listen on
unsigned int localPort = 8890;     
unsigned int remoteport = 8888;  
unsigned int remoteport_Potw = 8889;  
   

// buffers for sending data
char  SendBuffer[4]; 
char  packetBuffer[4]; 
char PotwBuffer[4];

// An EthernetUDP instance to let us send and receive packets over UDP
EthernetUDP Udp;

const int analogInPin = A1;
int sensorValue = 0; 


void setup() {
  // start the Ethernet and UDP:
  Ethernet.begin(mac, ip,mydns,subnet);
  Udp.begin(localPort);

  Serial.begin(9600);
}



void loop() {

    //usuwanie szumów z odczytu analogowego - średnia arytmetyczna
  int y=0,z=0,x=0;
  for(int i=0;i<20;i++)
  {
    y= analogRead(analogInPin);
    z+=y;
    delay(5);
  }
  //usuwanie ostatniego bitu
  x=z/20;
  x=x*0.512;
  if(x%2==1)
    x=x-1; 

  memset(packetBuffer, 0, 4);
  memset(PotwBuffer, 0, 4);
  memset(SendBuffer, 0, 4);
  sprintf(SendBuffer,"%d",x);

 
   // send a reply to the IP address and port that sent us the packet we received
  Udp.beginPacket(remote, remoteport);
  Udp.write(SendBuffer);
  Udp.endPacket();
  Serial.println("\nWyslane:");
  Serial.println(SendBuffer);

  int packetSize = Udp.parsePacket();
  if(packetSize)
  {
    Serial.print("Pakiet o rozmiarze: ");
    Serial.println(packetSize);
    Serial.print("Od ");
    IPAddress remote = Udp.remoteIP();
    for (int i =0; i < 4; i++)
    {
      Serial.print(remote[i], DEC);
      if (i < 3)
      {
        Serial.print(".");
      }
    }
    Serial.print(", port ");
    Serial.println(Udp.remotePort());
    memset(packetBuffer, 0, 4);
    Udp.read(packetBuffer, 4);
   
    Serial.println("Odebrane:");
    Serial.println(packetBuffer);
  
    if( strcmp( SendBuffer, packetBuffer ) == 0 )
    {
      Serial.println( "Badane lancuchy znakow sa rowne." );
      x=1111;
      sprintf(PotwBuffer,"%d",x);
      Udp.beginPacket(remote, remoteport_Potw);
      Udp.write(PotwBuffer);
      Udp.endPacket();
      Serial.println("Wyslane potwierdzenie:");
      Serial.println(PotwBuffer);
         
    }
    else
    {
       Serial.println( "Badane lancuchy znakow nie sa rowne." );
       x=0000;
       memset(PotwBuffer, 0, 4);
       sprintf(PotwBuffer,"%d",x);
       Udp.beginPacket(remote, remoteport_Potw);
       Udp.write(PotwBuffer);
       Udp.endPacket();
       Serial.println("Wyslane potwierdzenie:");
       Serial.println(PotwBuffer);
    }
  }
   
  delay(1);
}

