// Pins
#include "../AVRTools.X/ArduinoPins.h"

// ADC
#include <stdint.h>
#include "../AVRTools.X/GpioPinMacros.h"
#include "../AVRTools.X/Analog2Digital.h"

// Serial Communication
#include "../AVRTools.X/USART0.h"

// General
#include "../AVRTools.X/InitSystem.h"
#include "../AVRTools.X/SystemClock.h"

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

int main(int argc, char** argv) {
    
    initSystem();
    initSystemClock();
    Serial0* Serial = new Serial0();
    int bytes = 0;
    
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
    
    Serial->start(9600);
    while(true){
        
        bytes += Serial->print("A1: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(A1_CT)));
        bytes += Serial->print("A2: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(A2_CT)));
        bytes += Serial->print("A3: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(A3_CT)));
        bytes += Serial->print("A4: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(A4_CT)));
        bytes += Serial->print("B1: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(B1_CT)));
        bytes += Serial->print("B2: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(B2_CT)));
        bytes += Serial->print("B3: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(B3_CT)));
        bytes += Serial->print("B4: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(B4_CT)));
        bytes += Serial->print("C1: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(C1_CT)));
        bytes += Serial->print("C2: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(C2_CT)));
        bytes += Serial->print("C3: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(C3_CT)));
        bytes += Serial->print("C4: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(C4_CT)));
        bytes += Serial->print("D1: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(D1_CT)));
        bytes += Serial->print("D2: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(D2_CT)));
        bytes += Serial->print("D3: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(D3_CT)));
        bytes += Serial->print("D4: ");
        bytes += Serial->println(readGpioPinAnalogV(makeGpioVarFromGpioPinAnalog(D4_CT)));
        delay(10000);
    }
    return 0;
}