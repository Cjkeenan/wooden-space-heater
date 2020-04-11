#include <Wire.h>

struct vertex //from graph theory. A vertex is a node on a graph that can have any values of its own
{
  byte source[4]; //in this case, variables representing its current state
  byte pin[3]; //the red, green, and blue output pins.
  byte powered; //one indicating if it is connected at all
  byte faulted; //and one indicating if it should never be connected
};

struct edge //from graph theory. An edge connects two vertices. In this case, it can be connected or disconnected.
{
  struct vertex* zone1; //the first zone connected by the vertex
  struct vertex* zone2; //the other zone (order does not matter in this case)
  byte closed; //the current state of the edge
  };
  
struct vertex zone[14]; //create a list of vertices
struct vertex line[4]; //create a list of source vertices
struct edge relay[32];

void setup()
{
  // put your setup code here, to run once:
Wire.begin();
Serial.begin(9600);
 pinMode(2,INPUT);
 pinMode(3,INPUT);
 pinMode(4,INPUT);
 pinMode(5,INPUT);
 pinMode(6,INPUT);
   relay[0]  = {&line[0], &zone[1] }; //A1
   relay[1]  = {&zone[1], &zone[2] }; //A2
   relay[2]  = {&zone[2], &zone[3] }; //A3
   relay[3]  = {&zone[3], &zone[4] }; //A4
   relay[4]  = {&line[1], &zone[5] }; //B1
   relay[5]  = {&zone[5], &zone[6] }; //B2
   relay[6]  = {&zone[6], &zone[7] }; //B3
   relay[7]  = {&line[2], &zone[8] }; //C1
   relay[8]  = {&zone[8], &zone[9] }; //C2
   relay[9]  = {&zone[8], &zone[10]}; //C3
   relay[10] = {&zone[9], &zone[10]}; //C4
   relay[11] = {&line[3], &zone[11]}; //D1  
   relay[12] = {&zone[11],&zone[12]}; //D2
   relay[13] = {&zone[12],&zone[13]}; //D3
   relay[14] = {&zone[12],&zone[14]}; //D4
   relay[15] = {&zone[2], &zone[6] }; //AxB1
   relay[16] = {&zone[6], &zone[9] }; //BxC1
   relay[17] = {&zone[7], &zone[10]}; //BxC2
   relay[18] = {&zone[3], &zone[13]}; //AxD1
   relay[19] = {&zone[4], &zone[14]}; //AxD2
   relay[20] = {&zone[7], &zone[13]}; //BxD1
   relay[21] = {&zone[8], &zone[12]}; //CxD1
   
 SSC();

}

void SSC()
{
 relay[0].closed = 1;
 relay[1].closed = 1;
 relay[2].closed = 1;
 relay[3].closed = 1;
 relay[4].closed = 1;
 relay[5].closed = 1;
 relay[6].closed = 1;
 relay[7].closed = 1;
 relay[8].closed = 1;
 relay[9].closed = 1;
 relay[10].closed = 0;
 relay[11].closed = 1;
 relay[12].closed = 1;
 relay[13].closed = 1;
 relay[14].closed = 1;
 relay[15].closed = 0;
 relay[16].closed = 0;
 relay[17].closed = 0;
 relay[18].closed = 0;
 relay[19].closed = 0;
 relay[20].closed = 0;
 relay[21].closed = 0;
  }

void transmitRelays()
{
  Wire.beginTransmission(4); // transmit to device #4
  for(int i = 0;i < 32;i++)
  {
    Wire.write(relay[i].closed);
    Serial.print("relay ");Serial.print(i);Serial.print(" = ");Serial.println(relay[i].closed);
  }
  Wire.endTransmission();    // stop transmitting
}
  
void loop()
{
  blackout();
  kruskal();
  kruskal();
  kruskal();
  transmitRelays();
  zone[1].faulted = digitalRead(2);
  zone[2].faulted = digitalRead(3);
  zone[3].faulted = digitalRead(4);
  zone[4].faulted = digitalRead(5);
  zone[5].faulted = digitalRead(6);
  zone[6].faulted = digitalRead(7);
  zone[7].faulted = digitalRead(8);
  zone[8].faulted = digitalRead(9);
  zone[9].faulted = digitalRead(10);
  zone[10].faulted = digitalRead(11);
  zone[11].faulted = digitalRead(12);
  zone[12].faulted = digitalRead(13);
  zone[13].faulted = digitalRead(A1);
  zone[14].faulted = digitalRead(A2);
  delay(1000);
}

void blackout()
{
    for(int i = 0;i< 22;i++)
    {
      relay[i].closed = 0;
    }

    for(int i = 0;i<15;i++)
    {
      zone[i].powered = 0;
    }

    for(int i = 0;i<4;i++)
    {
      line[i].powered = 1;
      }
}

void kruskal()
{
  for(int i = 0;i<22;i++)
  {
    if(!(relay[i].zone1->faulted || relay[i].zone2->faulted) && (relay[i].zone1->powered ^ relay[i].zone2->powered))
      {    //each relay will only be closed if neither zone is faulted but only one zone is powered.
        relay[i].closed = 1;
        relay[i].zone1->powered = 1;
        relay[i].zone2->powered = 1;
        }
  }
}
