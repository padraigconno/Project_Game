
// Project: Cross-Country 
// Created: 2016-12-06

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Cross-Country" )
SetWindowSize( 1024, 768, 0 )

// set display properties
SetVirtualResolution( 1024, 768 )
SetOrientationAllowed( 1, 1, 1, 1 )
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery

SetScreenResolution(420, 720)
SetVirtualResolution ( 1334, 750 )

firstBeaver = CreateSprite(LoadImage("beaver1.png"))
SetSpritePosition(firstBeaver, 750, 50)
SetSpriteSize(firstBeaver, 45, 30)

secondBeaver = CreateSprite(LoadImage("beaver2.png"))
SetSpritePosition(secondBeaver, 740, 80)
SetSpriteSize(secondBeaver, 45, 30)

thirdBeaver = CreateSprite(LoadImage("beaver3.png"))
SetSpritePosition(thirdBeaver, 730, 110)
SetSpriteSize(thirdBeaver, 45, 30)

// back and foregaround 
background = CreateSprite(LoadImage("background.png"))
SetSpritePosition(background, 0, 0)
SetSpriteSize(background, 1024, 768)

foreground = CreateSprite(LoadImage("foreground.png"))
SetSpritePosition(foreground, 0, 700)
SetSpriteSize(foreground, 1024, 200) 


// obstacles and terrain
hill = CreateSprite(LoadImage("hill.png"))
SetSpritePosition(hill, 0, 0)
SetSpriteSize(hill, 45, 30)

rocks = CreateSprite(LoadImage("rocks.png"))
SetSpritePosition(rocks, 0,0)
SetSpriteSize(rocks, 45, 30)

LoadMusicOGG ( 1, "FamiliarRoads.ogg" )
PlayMusicOGG ( 1, 1 )


function CreateBackground( )
    LoadImage ( 1, "background.jpg" )
	CreateSprite ( 1, 1 )
	FixSpriteToScreen ( 1, 1 )
endfunction


	hill = LoadImage("hill.png")

	flat = LoadImage("rocks.png")
	

do
    

    Print( ScreenFPS() )
    Sync()
loop
