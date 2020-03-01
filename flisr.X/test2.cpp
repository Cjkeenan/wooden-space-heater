#include "../AVRTools.X/ArduinoPins.h"
#include "../AVRTools.X/InitSystem.h"
#include "../AVRTools.X/SystemClock.h"
#include "../AVRTools.X/Analog2Digital.h"
#include "../AVRTools.X/Pwm.h"

#define pPot            pPinA01
#define pPwmLed         pPin11
#define pLed            pPin04
int main()
{
       initSystem();
    initSystemClock();
    initPwmTimer2();
    initA2D();
    setGpioPinModeOutput( pLed );
    setGpioPinModeOutput( pPwmLed );
    setGpioPinModeInput( pPot );
    while ( 1 )
    {
        int i = readGpioPinAnalog( pPot ) / 4;
        writeGpioPinPwm( pPwmLed, i );
        if ( i > 127 )
        {
            setGpioPinHigh( pLed );
        }
        else
        {
            setGpioPinLow( pLed );
        }
        delayMilliseconds( 100 );
    }
}