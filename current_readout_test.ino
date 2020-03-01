int A1_relay = 18;
int A2_relay = 29;
int A3_relay = 28;
int A4_relay = 27;
int B1_relay = 19;
int B2_relay = 25;
int B3_relay = 24;
int B4_relay = 23;
int C1_relay = 20;
int C2_relay = 30;
int C3_relay = 31;
int C4_relay = 32;
int D1_relay = 21;
int D2_relay = 34;
int D3_relay = 35;
int D4_relay = 36;
int X7 = 26;

int A1_CT = A0;
int A2_CT = A4;
int A3_CT = A7;
int A4_CT = A6;
int B1_CT = A1;
int B2_CT = A5;
int B3_CT = A8;
int B4_CT = A9;
int C1_CT = A2;
int C2_CT = A10;
int C3_CT = A11;
int C4_CT = A12;
int D1_CT = A3;
int D2_CT = A13;
int D3_CT = A14;
int D4_CT = A15;



void setup() {
  // put your setup code here, to run once:
pinMode (A1_relay, OUTPUT);
pinMode (A2_relay, OUTPUT);
pinMode (A3_relay, OUTPUT);
pinMode (A4_relay, OUTPUT);
pinMode (B1_relay, OUTPUT);
pinMode (B2_relay, OUTPUT);
pinMode (B3_relay, OUTPUT);
pinMode (B4_relay, OUTPUT);
pinMode (C1_relay, OUTPUT);
pinMode (C2_relay, OUTPUT);
pinMode (C3_relay, OUTPUT);
pinMode (C4_relay, OUTPUT);
pinMode (D1_relay, OUTPUT);
pinMode (D2_relay, OUTPUT);
pinMode (D3_relay, OUTPUT);
pinMode (D4_relay, OUTPUT);
pinMode (A1_CT, INPUT);
pinMode (A2_CT, INPUT);
pinMode (A3_CT, INPUT);
pinMode (A4_CT, INPUT);
pinMode (B1_CT, INPUT);
pinMode (B2_CT, INPUT);
pinMode (B3_CT, INPUT);
pinMode (B4_CT, INPUT);
pinMode (C1_CT, INPUT);
pinMode (C2_CT, INPUT);
pinMode (C3_CT, INPUT);
pinMode (C4_CT, INPUT);
pinMode (D1_CT, INPUT);
pinMode (D2_CT, INPUT);
pinMode (D3_CT, INPUT);
pinMode (D4_CT, INPUT);
digitalWrite(A1_relay, HIGH);
digitalWrite(A2_relay, HIGH);
digitalWrite(A3_relay, HIGH);
digitalWrite(A4_relay, HIGH);
digitalWrite(B1_relay, HIGH);
digitalWrite(B2_relay, HIGH);
digitalWrite(B3_relay, HIGH);
digitalWrite(B4_relay, HIGH);
digitalWrite(C1_relay, HIGH);
digitalWrite(C2_relay, HIGH);
digitalWrite(C3_relay, HIGH);
digitalWrite(C4_relay, HIGH);
digitalWrite(D1_relay, HIGH);
digitalWrite(D2_relay, HIGH);
digitalWrite(D3_relay, HIGH);
digitalWrite(D4_relay, HIGH);

Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print("A1: ");
  Serial.println(analogRead(A1_CT));
  Serial.print("A2: ");
  Serial.println(analogRead(A2_CT));
  Serial.print("A3: ");
  Serial.println(analogRead(A3_CT));
  Serial.print("A4: ");
  Serial.println(analogRead(A4_CT));
  Serial.print("B1: ");
  Serial.println(analogRead(B1_CT));
  Serial.print("B2: ");
  Serial.println(analogRead(B2_CT));
  Serial.print("B3: ");
  Serial.println(analogRead(B3_CT));
  Serial.print("B4: ");
  Serial.println(analogRead(B4_CT));
  Serial.print("C1: ");
  Serial.println(analogRead(C1_CT));
  Serial.print("C2: ");
  Serial.println(analogRead(C2_CT));
  Serial.print("C3: ");
  Serial.println(analogRead(C3_CT));
  Serial.print("C4: ");
  Serial.println(analogRead(C4_CT));
  Serial.print("D1: ");
  Serial.println(analogRead(D1_CT));
  Serial.print("D2: ");
  Serial.println(analogRead(D2_CT));
  Serial.print("D3: ");
  Serial.println(analogRead(D3_CT));
  Serial.print("D4: ");
  Serial.println(analogRead(D4_CT));
  delay(10000);
  

}
