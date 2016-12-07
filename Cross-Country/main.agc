
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

flag = CreateSprite(LoadImage("flag.png"))
SetSpritePosition(1000, 50)
SetSpriteSize(50,50)

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


	function Choose()
		if(GetPointerPressed() = 
	endfunction 

function CreateBackground( )
    LoadImage ( 1, "background.jpg" )
	CreateSprite ( 1, 1 )
	FixSpriteToScreen ( 1, 1 )
endfunction

	function Collision()
	//when beaver hits the hill
	 for moveY = 50 to 80
		  
	 for moveX = 0 to 250
	if(GetSpriteCollision(firstBeaver , hill) = 1)
	// set beaver over the hill
	
	//temp
	SetSpritePosition(firstBeaver, moveX, moveY)
	endif
	
	if(GetSpriteCollision(secondBeaver , hill) = 1)
	
	SetSpritePosition(secondBeaver, moveX, moveY)
	endif
	
	if(GetSpriteCollision(thirdBeaver , hill) = 1)
	
	SetSpritePosition(thirdBeaver, moveX, moveY)
	endif	
	
	endfunction
	
	
	function win()
		//find out who won
		if(choosen = GetSpriteHit(1000, 50))
		 win = CreateSprite (LoadImage ("temp/win.jpeg") )
		//SetSpriteSize(win, 100, 100)
		SetSpritePosition( win, 300, 200)
        //Print(str(GetPointerX ( )))
        //Print(str(GetPointerY ( )))
    else 
		initialTime = initialTime + 10
    endif

	endfunction

do
    
	Print(Timer)
	Sync()
loop
