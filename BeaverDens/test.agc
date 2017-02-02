SetClearColor ( 0, 255, 0 )


StartTextInput ( )
text$ = ""


do
    if GetTextInputCompleted ( ) = 1
        text$ = GetTextInput ( )
    endif


    Print ( text$ )


    Sync ( )
loop



do
    

    Print( ScreenFPS() )
    Sync()
loop

// Project: BeaverDens 
// Created: 2017-01-30


SetVirtualResolution(1080, 1920)


// variables
	 num1 as integer
	 num2 as integer
	 num3 as integer
	 num4 as integer
	 num5 as integer
	 num6 as integer
	 num7 as integer
	 num8 as integer
	 num9 as integer
	 num10 as integer
	 num11 as integer
	 num12 as integer
	 
	den1 = CreateSprite( LoadImage ("den1.png"))
	den2 = CreateSprite( LoadImage ("den2.png"))
	den3 = CreateSprite( LoadImage ("den3.png"))
	den4 = CreateSprite( LoadImage ("den4.png"))
	den5 = CreateSprite( LoadImage ("den5.png"))
	den6 = CreateSprite( LoadImage ("den6.png"))
	den7 = CreateSprite( LoadImage ("den7.png"))
	
	 num1 = 1
	 num2 = 1
	 num3 = 1
	 num4 = 1
	 num5 = 1
	 num6 = 1
	 num7 = 1
	 num8 = 1
	 num9 = 1
	 num10 = 1
	 num11 = 1
	 num12 = 1
	//Logic
	total = num1 + num2 + num1 + num3 + num4 + num5 + num6 + num7 + num8 + num9 +num10 + num11 + num12
	input as String
	input = "hello"
	do
		Print(total)
		
	Sync()
	loop	
	
SetClearColor ( 0, 255, 0 )

StartTextInput ( )
text$ = ""


do
    if GetTextInputCompleted ( ) = 1 AND text$ = input
        text$ = GetTextInput ( )
    endif


    Print ( text$ )


    Sync ( )
loop

do
if text$ = input
	Print("you win")
	endif
	
	Sync ()
loop


