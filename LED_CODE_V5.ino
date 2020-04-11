#include <Wire.h>

struct vertex //from graph theory. A vertex is a node on a graph that can have any values of its own
{
  byte source[4]; //in this case, variables representing its current state
  byte pin[3]; //the red, green, and blue output pins.
};

struct edge //from graph theory. An edge connects two vertices. In this case, it can be connected or disconnected.
{
  struct vertex* zone1; //the first zone connected by the vertex
  struct vertex* zone2; //the other zone (order does not matter in this case)
  byte closed; //the current state of the edge
  };

void flow(struct edge relay) //function to propagate data from two vertices connected by a node
{//Serial.print("start ");
  if(relay.closed == 1) //supervise the flow with the relay's current state
      {
        //Serial.print("check ");
      for(int i=0;i<4;i++) //for ever zone
      {
        relay.zone1->source[i] = relay.zone1->source[i] || relay.zone2->source[i]; //if either vertex has the value, both should have it.
        relay.zone2->source[i] = relay.zone1->source[i];
        }
        //Serial.println("write ");
      }
      
  }
  
void refresh(struct vertex zone) //function to illuminate the respective LEDs given a zone state.
{
  int state = (1*zone.source[0]+2*zone.source[1]+4*zone.source[2]+8*zone.source[3]);
  switch(state)
    { 
      case 0: //if unconnected
        digitalWrite(zone.pin[0],1);
        digitalWrite(zone.pin[1],1);
        digitalWrite(zone.pin[2],1);
          break;
      case 1: //only connected to the first source
        digitalWrite(zone.pin[0],0);
        digitalWrite(zone.pin[1],1);
        digitalWrite(zone.pin[2],1);
          break;
      case 2: //only connected to the second source
        digitalWrite(zone.pin[0],1);
        digitalWrite(zone.pin[1],1);
        digitalWrite(zone.pin[2],0);
          break;
      case 4: //only connected to the third source
        digitalWrite(zone.pin[0],1);
        digitalWrite(zone.pin[1],0);
        digitalWrite(zone.pin[2],1);
          break;
      case 8: //only connected to the fourth source
        digitalWrite(zone.pin[0],0);
        digitalWrite(zone.pin[1],1);
        digitalWrite(zone.pin[2],0);
          break;
      default: //none of the above, i.e. connected to two sources
        digitalWrite(zone.pin[0],0);
        digitalWrite(zone.pin[1],0);
        digitalWrite(zone.pin[2],0);
          break;
    }
  } 

struct vertex zone[16]; //create a list of vertices
struct vertex line[4]; //create a list of source vertices
struct edge relay[22]; //create a list of edges
int counter = 0; //for demo mode trigger

void printRelays()
{
      for(int i = 1;i<22;i++)
      {
        //Serial.print(relay[i].closed);
      }
        //Serial.println();
  }

void printZones()
{
  for(int i = 0;i<16;i++)
  {
    Serial.print("Zone ");Serial.print(i);Serial.print(" status = ");for(int j = 0;j<4;j++){Serial.print(zone[i].source[j]);}Serial.println("");
    }
  }

void receiveEvent(int howMany) //from the Arduino library, MasterWriter/SlaveReader
{   
  for(int i = 0;0<Wire.available();i++) //loop with a counter to keep track of current number until all data is read;
    {
      int t = Wire.read(); //read the byte into the temporary variable t
      if(t == 1)              //if t is 1
        {relay[i].closed = 1;}  //close the relay
      else                    //otherwise,
        {relay[i].closed = 0;}  //open the relay
    }
    //Serial.print("Event Received = ");
    //printRelays();
}
  
void setup()
{ 
  //define all relays here, with their connections and starting state
  //relay[n] ={&firstVertex,&secondVertex}; //name
   relay[0]  = {&line[0], &zone[1] }; //A1
   relay[1]  = {&zone[1], &zone[2] }; //A2
   relay[2]  = {&zone[2], &zone[3] }; //A3
   relay[3]  = {&zone[3], &zone[15] }; //A4
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
   relay[19] = {&zone[15], &zone[14]}; //AxD2
   relay[20] = {&zone[7], &zone[13]}; //BxD1
   relay[21] = {&zone[8], &zone[12]}; //CxD1
   //relay[21] = {&zone[3], &line[0]}; //Test

   //define all zone outputs here //zone[n] = {{},{r,g,b}} //name
   zone[1]  = {{},{13,12,11}}; //left
   zone[2]  = {{},{14,9,8}}; //center
   zone[3]  = {{},{7,6,5}}; //right
   zone[15]  = {{},{4,2,3}}; //right
   zone[5]  = {{},{15,16,17}}; //right
   zone[6]  = {{},{26,27,28}}; //right
   zone[7]  = {{},{30,31,32}}; //right
   zone[8]  = {{},{33,34,35}}; //right
   zone[9]  = {{},{36,37,38}}; //right
   zone[10] = {{},{39,40,41}}; //right
   zone[11] = {{},{22,25,24}}; //right
   zone[12] = {{},{43,44,45}}; //right
   zone[13] = {{},{47,48,49}}; //right
   zone[14] = {{},{51,52,53}}; //right
   
   writeenable();
   Wire.begin(4); //initiate I2C link as device 4
   Wire.onReceive(receiveEvent); //associate this function with incoming data
   Serial.begin(2000000);
   //Serial.println("it works");
}

void loop()
{
  blackout(); //turn off all non-station power states
  //manual();
  //Serial.println(" it loops once");
  flowall(); //rebuild network from relays
  //Serial.println(" it loops ");
  refreshall();
  Serial.print("Zone 1 = ");Serial.print(zone[1].source[0]);Serial.print(zone[1].source[1]);Serial.print(zone[1].source[2]);Serial.print(zone[1].source[3]);Serial.print(" -> ");Serial.print(digitalRead(13));Serial.print(digitalRead(12));Serial.println(digitalRead(11));
  Serial.print("Zone 4 = ");Serial.print(zone[15].source[0]);Serial.print(zone[15].source[1]);Serial.print(zone[15].source[2]);Serial.print(zone[16].source[3]);Serial.print(" -> ");Serial.print(digitalRead(4));Serial.print(digitalRead(2));Serial.println(digitalRead(3));
  Serial.print("Zone 12 = ");Serial.print(zone[12].source[0]);Serial.print(zone[12].source[1]);Serial.print(zone[12].source[2]);Serial.print(zone[12].source[3]);Serial.print(" -> ");Serial.print(digitalRead(47));Serial.print(digitalRead(48));Serial.println(digitalRead(49));
//Serial.println("h");
  delay(100); //arbitrary delay
  
  //printZones();
}

void writeenable()
{
  for(int i=0;i<16;i++)
    for (int j=0;j<3;j++)
    {
      pinMode(zone[i].pin[j],OUTPUT);
    }
  }

void flowall() //function to calculate power flow in the system
{
  //Serial.println("it flows");
  for(int j = 0;j<20;j++) //j is the iteration counter. Decrease for speed, increase for accuracy with longer path lengths.
    {
      for(int i = 0;i<=21;i++) //set constant in the center to number of active relays
    {
      //Serial.print("Relay ");Serial.println(i);
      flow(relay[i]);
    }
    }
    //Serial.println("but doesn't finish?");
  }

void manual()//desperate times call for desperate measures
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


void blackout() //function to remove existing data
  {
    for(int i = 0;i<16;i++) //for every zone
      {
      for(int j = 0;j<4;j++) //for every status in that zone
      {zone[i].source[j] = 0;} //set it to zero
      }

    for (int i = 0;i<4;i++) //for every line
      {
        for(int j = 0;j<4;j++) //for every status in those lines
          {
            line[i].source[j] = 0;//set them to zero
          } 
        line[i].source[i]=1; //except their normal status
      }
    }

    void refreshall()
    {
      for(int i = 1;i<16;i++)
      {
        refresh(zone[i]);
      }
    }

    void demo()
    {
      blackout();
      for(int p = 0;p<3;p++)//test all colors 
       {
        for(int q = 1;q<7;q++)//test all zones
        {
          
          if(counter == 0)
            {return;}
          zone[q].source[p] = 1;
          refreshall();
          delay(200);
          //Serial.println("");//used to make loop interruptable
          zone[q].source[p] = 0;
          refreshall();
        }
      }
      for(int x = 0;x < 22; x++)//test all relays
      {
        if(counter == 0)
        {
          return;}
        relay[x].zone1->source[1] = 1;
        relay[x].zone2->source[1] = 1;        
        refreshall();
        delay(2000);
        relay[x].zone1->source[1] = 0;
        relay[x].zone2->source[1] = 0;
        }
    }
    */
    
