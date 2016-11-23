SetScreenResolution(420, 720)
SetVirtualResolution ( 1334, 750 )

background_3 = CreateSprite(LoadImage(1, "kitchen.png"))
SetSpriteSize(background_3, 1334, 750)
SetSpritePosition (background_3, 0, 0 )

tap = CreateSprite(LoadImage(2, "tap.png"))
SetSpriteSize(tap, 218, 232)
SetSpritePosition(tap, 0, 250)

jug1 = CreateSprite(LoadImage(3, "jug1.png"))
SetSpritePosition(jug1, 165, 150)
SetSpritePosition(jug1, 300, 300)

jug2 = CreateSprite(LoadImage(4, "jug2.png"))
SetSpritePosition(jug2, 105, 100)
SetSpritePosition(jug2, 100, 100)

drop = CreateSprite(LoadImage (5, "sink.png"))
SetSpritePosition(drop, 200, 200)
SetSpritePosition(drop, 100, 100)

 LoadMusicOGG ( 1, "FamiliarRoads.ogg" )
 PlayMusicOGG ( 1, 1 )
 
 if getPointerPressed()=1
    hit1 = getSpriteHitTest(jug1, getPointerX(), getPointerY())
    if hit1>0
        rem sprite picked up
        picked1 = jug1
        pX1 = getPointerX()
        pY1 = getPointerY()
    endif
else
    if picked1>0
        if getPointerState()>0
            rem Sprite being dragged
            cX1 = getPointerX()
            cY1 = getPointerY()
            setSpritePosition(picked1,getSpriteX()+cX1-pX1,getSpriteY()+cY1-pY1)
            pX1 = cX1
            pY1 = cY1
        else
            rem Sprite Dropped
            picked1=0
        endif
    endif
endif


if getPointerPressed()=1
    hit2 = getSpriteHitTest(jug2, getPointerX(), getPointerY())
    if hit2>0
        rem sprite picked up
        picked2 = jug2
        pX2 = getPointerX()
        pY2 = getPointerY()
    endif
else
    if picked2>0
        if getPointerState()>0
            rem Sprite being dragged
            cX2 = getPointerX()
            cY2 = getPointerY()
            setSpritePosition(picked2,getSpriteX()+cX2-pX2,getSpriteY()+cY2-pY2)
            pX2 = cX2
            pY2 = cY2
        else
            rem Sprite Dropped
            picked2=0
        endif
    endif
endif

//do Animation 
if GetSpriteCollision(tap, jug1)
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug1.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug2.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug3.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug4.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug5.png" ) )
endif

if GetSpriteCollision(tap, jug2)
	AddSpriteAnimationFrame ( 4, LoadImage ( "smallJug1.png" ) )
	AddSpriteAnimationFrame ( 4, LoadImage ( "smallJug2.png" ) )
	AddSpriteAnimationFrame ( 4, LoadImage ( "smallJug3.png" ) )
	AddSpriteAnimationFrame ( 4, LoadImage ( "smallJug4.png" ) )
	AddSpriteAnimationFrame ( 4, LoadImage ( "smallJug5.png" ) )
endif

if GetSpriteCollision(drop, jug1)
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug5.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug4.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug3.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug2.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug1.png" ) )
endif


if GetSpriteCollision(drop, jug2)
	AddSpriteAnimationFrame ( 3, LoadImage ( "smallJug5.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "smallJug4.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "smallJug3.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "smallJug2.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "smallJug1.png" ) )
endif


do 
	Print("Get a 4 Litre Jug of Water")
	Time = GetSeconds()
	Print(Time)
	Sync()
loop

// Logic To win the game 

rem Fill the 5 Litre Jug 
rem Empty It into the 3 Litre --- 2 Litre in the 5 Litre
if GetSpriteCollision(jug1, jug2)
	//bigJug
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug5.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug4.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug3.png" ) )

	//smallJug
	AddSpriteAnimationFrame ( 4, LoadImage ( "smallJug1.png" ) )
	AddSpriteAnimationFrame ( 4, LoadImage ( "smallJug2.png" ) )
endif

rem Empty the 3 Litre Jug


rem Pour 2 Litre into 3 Litre 
if GetSpriteCollision(tap, jug1)
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug1.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug2.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug3.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug4.png" ) )
	AddSpriteAnimationFrame ( 3, LoadImage ( "bigJug5.png" ) )
endif


rem fill up 5 Litre 

rem Empty 5 Litre into the 3 Litre
//tricky
if 


rem If The jug is 4 litres full print "You win message"


if // 4 Litres 
	win = CreateSprit(5, LoadImage("temp/win.jpg"))
	SetSpritePosition(win, 300, 200)

endif
