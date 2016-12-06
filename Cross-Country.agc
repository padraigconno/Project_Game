SetScreenResolution(420, 720)
SetVirtualResolution ( 1334, 750 )

firstBeaver = CreateSprite(LoadImage(2, "beaver1.png"))
SetSpritePosition(750, 50)
SetSpriteSize(45, 30)

secondBeaver = CreateSprite(LoadImage(3,"beaver2.png"))
SetSpritePosition(740, 80)
SetSpriteSize(45, 30)

thirdBeaver = CreateSprite(LoadImage(4,"beaver3.png"))
SetSpritePosition(730,110)
SetSpriteSize(45, 30)

LoadMusicOGG ( 1, "FamiliarRoads.ogg" )
PlayMusicOGG ( 1, 1 )


function CreateBackground( )
    LoadImage ( 1, "background.jpg" )
	CreateSprite ( 1, 1 )
	FixSpriteToScreen ( 1, 1 )
endfunction

function CreateLevel()
	hill = LoadImage("hill.png")
	
	flat = LoadImage("rocks.png")
	
	// random hills
	CreateStrip ( hill, 25.0, 0.0, 1 )
	
	//random rocks 
	CreateStrip (flat, 25.0, 0.0, 1)
	
endfunction

function CreateStrip ( iImage as integer, fX as float, fY as float, iMode as integer )
    for i = 0 to 250
        built = 0
        iSprite = -1
        
        

// Make Terrain  
/*
hill = CreateSprite(LoadImage(5, "hill.png"))
SetSpritePosition()
SetSpriteSize()
*/
