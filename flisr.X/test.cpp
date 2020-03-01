#include "../AVRTools.X/ArduinoPins.h"
#include "../AVRTools.X/InitSystem.h"
#include "../AVRTools.X/SystemClock.h"

#define pRedLed            pPin10
#define pYellowLed         pPin07
#define pGreenLed          pPin04

int main()
{
    initSystem();
    initSystemClock();

    setGpioPinModeOutput( pGreenLed );
    setGpioPinModeOutput( pYellowLed );
    setGpioPinModeOutput( pRedLed );

    setGpioPinHigh( pGreenLed );
    setGpioPinHigh( pYellowLed );
    setGpioPinHigh( pRedLed );

    delayMilliseconds( 2000 );

    setGpioPinLow( pGreenLed );
    setGpioPinLow( pYellowLed );
    setGpioPinLow( pRedLed );

    while ( 1 )
    {
        delayMilliseconds( 1000 );

        setGpioPinLow( pRedLed );
        setGpioPinHigh( pGreenLed );

        delayMilliseconds( 1000 );

        setGpioPinLow( pGreenLed );
        setGpioPinHigh( pYellowLed );

        delayMilliseconds( 1000 );

        setGpioPinLow( pYellowLed );
        setGpioPinHigh( pRedLed );
    }
}