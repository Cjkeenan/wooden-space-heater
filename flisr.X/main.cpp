// Pins
#include "../AVRTools.X/ArduinoPins.h"

// ADC
#include <stdint.h>
#include "../AVRTools.X/GpioPinMacros.h"
#include "../AVRTools.X/Analog2Digital.h"

// General
#include "../AVRTools.X/InitSystem.h"
#include "../AVRTools.X/SystemClock.h"

// Serial Communication
#include "../AVRTools.X/USART0.h"

#define A1_relay    pPin18;
#define A2_relay    pPin29;
#define A3_relay    pPin28;
#define A4_relay    pPin27;
#define B1_relay    pPin19;
#define B2_relay    pPin25;
#define B3_relay    pPin24;
#define B4_relay    pPin23;
#define C1_relay    pPin20;
#define C2_relay    pPin30;
#define C3_relay    pPin31;
#define C4_relay    pPin32;
#define D1_relay    pPin21;
#define D2_relay    pPin34;
#define D3_relay    pPin35;
#define D4_relay    pPin36;
#define X7          pPin26;

#define A1_CT       pPinA00;
#define A2_CT       pPinA04;
#define A3_CT       pPinA07;
#define A4_CT       pPinA06;
#define B1_CT       pPinA01;
#define B2_CT       pPinA05;
#define B3_CT       pPinA08;
#define B4_CT       pPinA09;
#define C1_CT       pPinA02;
#define C2_CT       pPinA10;
#define C3_CT       pPinA11;
#define C4_CT       pPinA12;
#define D1_CT       pPinA03;
#define D2_CT       pPinA13;
#define D3_CT       pPinA14;
#define D4_CT       pPinA15;

int main() {
    
    initSystem();
    initSystemClock();
    initA2D();
    
    Serial0 usb;
    usb.start( 38400 );
    delayMilliseconds( 2000 );
    
    USART0::write( '\n\nSerial Init\n' );   
    
    usb.write( "\n\nwrite() test\n" );

    usb.write( '1' );

    usb.write( '\n' );

    usb.write( "write() done\n" );
    
    usb.println( "\n\nprintln() test" );

    usb.println( 1 );

    usb.println( "println() done" );

    usb.println( 1 );
    
    
    GpioPinVariable pins[16];
    pins[0]  = makeGpioVarFromGpioPin(A1_CT);
    pins[1]  = makeGpioVarFromGpioPin(A2_CT);
    pins[2]  = makeGpioVarFromGpioPin(A3_CT);
    pins[3]  = makeGpioVarFromGpioPin(A4_CT);
    pins[4]  = makeGpioVarFromGpioPin(B1_CT);
    pins[5]  = makeGpioVarFromGpioPin(B2_CT);
    pins[6]  = makeGpioVarFromGpioPin(B3_CT);
    pins[7]  = makeGpioVarFromGpioPin(B4_CT);
    pins[8]  = makeGpioVarFromGpioPin(C1_CT);
    pins[9]  = makeGpioVarFromGpioPin(C2_CT);
    pins[10] = makeGpioVarFromGpioPin(C3_CT);
    pins[11] = makeGpioVarFromGpioPin(C4_CT);
    pins[12] = makeGpioVarFromGpioPin(D1_CT);
    pins[13] = makeGpioVarFromGpioPin(D2_CT);
    pins[14] = makeGpioVarFromGpioPin(D3_CT);
    pins[15] = makeGpioVarFromGpioPin(D4_CT);
    
    //Set Output Ports
    setGpioPinModeOutput(A1_relay);
    setGpioPinModeOutput(A2_relay);
    setGpioPinModeOutput(A3_relay);
    setGpioPinModeOutput(A4_relay);
    
    setGpioPinModeOutput(B1_relay);
    setGpioPinModeOutput(B2_relay);
    setGpioPinModeOutput(B3_relay);
    setGpioPinModeOutput(B4_relay);
    
    setGpioPinModeOutput(C1_relay);
    setGpioPinModeOutput(C2_relay);
    setGpioPinModeOutput(C3_relay);
    setGpioPinModeOutput(C4_relay);
    
    setGpioPinModeOutput(D1_relay);
    setGpioPinModeOutput(D2_relay);
    setGpioPinModeOutput(D3_relay);
    setGpioPinModeOutput(D4_relay);
    
    //Initialize output ports high (which is inverse in circuit)
    setGpioPinHigh(A1_relay);
    setGpioPinHigh(A2_relay);
    setGpioPinHigh(A3_relay);
    setGpioPinHigh(A4_relay);
    
    setGpioPinHigh(B1_relay);
    setGpioPinHigh(B2_relay);
    setGpioPinHigh(B3_relay);
    setGpioPinHigh(B4_relay);
    
    setGpioPinHigh(C1_relay);
    setGpioPinHigh(C2_relay);
    setGpioPinHigh(C3_relay);
    setGpioPinHigh(C4_relay);
    
    setGpioPinHigh(D1_relay);
    setGpioPinHigh(D2_relay);
    setGpioPinHigh(D3_relay);
    setGpioPinHigh(D4_relay);
    
    //Set input Ports
    setGpioPinModeInput(A1_CT);
    setGpioPinModeInput(A2_CT);
    setGpioPinModeInput(A3_CT);
    setGpioPinModeInput(A4_CT);
    
    setGpioPinModeInput(B1_CT);
    setGpioPinModeInput(B2_CT);
    setGpioPinModeInput(B3_CT);
    setGpioPinModeInput(B4_CT);
    
    setGpioPinModeInput(C1_CT);
    setGpioPinModeInput(C2_CT);
    setGpioPinModeInput(C3_CT);
    setGpioPinModeInput(C4_CT);
    
    setGpioPinModeInput(D1_CT);
    setGpioPinModeInput(D2_CT);
    setGpioPinModeInput(D3_CT);
    setGpioPinModeInput(D4_CT);
    
    int i = 0;
    while(1){
        
        // With pin variables
//        usb.println("Current Check Start");
//        for(int i = 0; i < 16; i++){
//            usb.println(i);
//            usb.println(readGpioPinAnalogV(pins[i]));
//            usb.println("\n\r");
//        }
        
       //  Without pin variables
       usb.print("----------------CURRENT READ NUMBER ");
       usb.print(i);
       usb.println("----------------\r");
       usb.print("A1: ");
       usb.print(readGpioPinAnalog(A1_CT));
       usb.print("\n\r");
       usb.print("A2: ");
       usb.print(readGpioPinAnalog(A2_CT));
       usb.print("\n\r");
       usb.print("A3: ");
       usb.print(readGpioPinAnalog(A3_CT));
       usb.print("\n\r");
       usb.print("A4: ");
       usb.print(readGpioPinAnalog(A4_CT));
       usb.println("\n\r");
       usb.print("B1: ");
       usb.print(readGpioPinAnalog(B1_CT));
       usb.print("\n\r");
       usb.print("B2: ");
       usb.print(readGpioPinAnalog(B2_CT));
       usb.print("\n\r");
       usb.print("B3: ");
       usb.print(readGpioPinAnalog(B3_CT));
       usb.print("\n\r");
       usb.print("B4: ");
       usb.print(readGpioPinAnalog(B4_CT));
       usb.println("\n\r");
       usb.print("C1: ");
       usb.print(readGpioPinAnalog(C1_CT));
       usb.print("\n\r");
       usb.print("C2: ");
       usb.print(readGpioPinAnalog(C2_CT));
       usb.print("\n\r");
       usb.print("C3: ");
       usb.print(readGpioPinAnalog(C3_CT));
       usb.print("\n\r");
       usb.print("C4: ");
       usb.println(readGpioPinAnalog(C4_CT));
       usb.println("\n\r");
       usb.print("D1: ");
       usb.print(readGpioPinAnalog(D1_CT));
       usb.print("\n\r");
       usb.print("D2: ");
       usb.print(readGpioPinAnalog(D2_CT));
       usb.print("\n\r");
       usb.print("D3: ");
       usb.print(readGpioPinAnalog(D3_CT));
       usb.print("\n\r");
       usb.print("D4: ");
       usb.print(readGpioPinAnalog(D4_CT));
       usb.print("\n\r");
       i++;
       delayMilliseconds(2000);
        // write() currently working, print() and println() currently not

        
    }
    return 0;
}