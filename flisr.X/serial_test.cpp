#include "../AVRTools.X/InitSystem.h"

#include "../AVRTools.X/SystemClock.h"

#include "../AVRTools.X/USART0.h"



int main()

{

    initSystem();

    initSystemClock();



    Serial0 s;



    s.start( 38400 );



    delayMilliseconds( 2000 );



    USART0::write( "\n\nUSART0 test\n" );



    s.write( "\n\nwrite() test\n" );

    s.write( '1' );

    s.write( '\n' );

    s.write( "write() done\n" );



    s.println( "\n\nprintln() test" );

    s.println( 1 );

    s.println( "println() done" );



    int i = 0;

    s.println();

    while ( 1 )

    {

        delayMilliseconds( 1000 );

        s.println( i++ );

    }

}
