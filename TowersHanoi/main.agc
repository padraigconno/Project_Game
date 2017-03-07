// Project: TowersHanoi 
// Created: 2017-02-05

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "TowersHanoi" )
SetWindowSize( 1024, 768, 0 )

// set display properties
SetVirtualResolution( 1024, 768 )
SetOrientationAllowed( 1, 1, 1, 1 )
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

	tower1 = CreateSprite(LoadImage ("media/tower.png"))
	SetSpriteSize(tower1, 100, 100)
	SetSpritePosition(tower1, 100, 100)
	
	tower2 = CreateSprite(LoadImage ("media/tower.png"))
	SetSpriteSize(tower2, 100, 100)
	SetSpritePosition(tower2, 200, 100)
	
	tower3 = CreateSprite(LoadImage ("media/tower.png"))
	SetSpriteSize(tower3, 100, 100)
	SetSpritePosition(tower3, 300, 100)
	
	disk1 = CreateSprite(LoadImage ("media/disk1.png"))
	SetSpriteSize(disk1, 25, 25)
	SetSpritePosition(disk1, 100, 97)

	disk2 = CreateSprite(LoadImage ("media/disk2.png"))
	SetSpriteSize(disk2, 20, 20)
	SetSpritePosition(disk2, 100, 72)
	
	disk3 = CreateSprite(LoadImage ("media/disk3.png"))
	SetSpriteSize(disk3, 17, 17)
	SetSpritePosition(disk3, 100, 52)
	
	disk4 = CreateSprite(LoadImage ("media/disk4.png"))
	SetSpriteSize(disk4, 15, 15)
	SetSpritePosition(disk4, 100, 37)

do
	/*
    Print ( "Touch or click the screen to move the" )
    Print ( "sprite to that location" )
*/

if getPointerPressed()=1
    hit = getSpriteHitTest(disk1, getPointerX(), getPointerY())
    if hit>0
        rem sprite picked up
        picked = disk1
        pX = getPointerX()
        pY = getPointerY()
    endif
else
    if picked>0
        if getPointerState()>0
            rem Sprite being dragged
            cX = getPointerX()
            cY = getPointerY()
            setSpritePosition(picked,getSpriteX(disk1)+cX-pX,getSpriteY(disk1)+cY-pY)
            pX = cX
            pY = cY
        else
            rem Sprite Dropped
            picked=0
        endif
    endif
endif	


rem for disk2			
if getPointerPressed()=1
    hit2 = getSpriteHitTest(disk2, getPointerX(), getPointerY())
    if hit2 > 0
        rem sprite picked up
        picked2 = disk2
        pX2 = getPointerX()
        pY2 = getPointerY()
    endif
else
    if picked2 > 0
        if getPointerState()>0
            rem Sprite being dragged
            cX2 = getPointerX()
            cY2 = getPointerY()
            setSpritePosition(picked2, getSpriteX(disk2) + cX2 - pX2, getSpriteY(disk2) + cY2 - pY2)
            pX2 = cX2 
            pY2 = cY2
        else
            rem Sprite Dropped
            picked2=0
        endif
    endif
endif	


rem for disk3 
if getPointerPressed()=1
    hit3 = getSpriteHitTest(disk3, getPointerX(), getPointerY())
    if hit3 > 0
        rem sprite picked up
        picked3 = disk3
        pX3 = getPointerX()
        pY3 = getPointerY()
    endif
else
    if picked3 > 0
        if getPointerState()>0
            rem Sprite being dragged
            cX3 = getPointerX()
            cY3 = getPointerY()
            setSpritePosition(picked3 ,getSpriteX(disk3) + cX3 - pX3,getSpriteY(disk3) + cY3 - pY3)
            pX3 = cX3
            pY3 = cY3
        else
            rem Sprite Dropped
            picked3 = 0
        endif
    endif
endif	

if getPointerPressed()=1
    hit4 = getSpriteHitTest(disk4, getPointerX(), getPointerY())
    if hit4 > 0
        rem sprite picked up
        picked4 = disk4
        pX4 = getPointerX()
        pY4 = getPointerY()
    endif
else
    if picked4 > 0
        if getPointerState()>0
            rem Sprite being dragged
            cX4 = getPointerX()
            cY4 = getPointerY()
            setSpritePosition(picked4 ,getSpriteX(disk4) + cX4 - pX4,getSpriteY(disk4) + cY4 - pY4)
            pX4 = cX4
            pY4 = cY4
        else
            rem Sprite Dropped
            picked4 = 0
        endif
    endif
endif	
			// rules to win the game 
			rem if tower 3 is the exact same state as the start of tower two 
loop	
do
    
    Print( ScreenFPS() )
    Sync()
loop
