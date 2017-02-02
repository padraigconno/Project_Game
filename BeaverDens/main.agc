
#include "test.agc"
function CreateBackground( )
    LoadImage ( 1, "map.png" )
	CreateSprite ( 1, 1 )
	FixSpriteToScreen ( 1, 1 )
endfunction


Begin ( )

function Begin ( )
    // load everything for the game
    SetVirtualResolution ( 550, 400 )

    CreateBackground      ( )
endfunction

input as String 
input = "13"

StartTextInput ( )
str1 as string = "What is the shortest length to all the dens?"


do
    if GetTextInputCompleted ( ) = 1 
    str1 = GetTextInput ( )
    endif


    Print ( str1 )

	if input = str1 
	PRINT ("you win")
	endif
	if input <> str1
	Print("Try again")
	endif
    Sync ( )
loop
