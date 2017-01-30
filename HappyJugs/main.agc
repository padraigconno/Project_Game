// Project  Name: Happy Jugs
// Created By: Padraig Connolly

 SetVirtualResolution ( 1334, 750 )
   
   
   // background image
    background = CreateSprite ( LoadImage ( "background.png" ) )
    SetSpriteSize(background, 1334, 750)


	jug1 = CreateSprite (LoadImage ("tempJug_burned.png") )
    SetSpriteSize(jug1, 200, 200)
    SetSpritePosition( jug1, 325, 340)

	jug2 = CreateSprite (LoadImage ("tempJug_burned.png") )
    SetSpriteSize(jug2, 100, 100)
    SetSpritePosition( jug2, 525, 540)
      
do
	/*
    Print ( "Touch or click the screen to move the" )
    Print ( "sprite to that location" )
*/

if getPointerPressed()=1
    hit = getSpriteHitTest(jug1, getPointerX(), getPointerY())
    if hit>0
        rem sprite picked up
        picked = jug1
        pX = getPointerX()
        pY = getPointerY()
    endif
else
    if picked>0
        if getPointerState()>0
            rem Sprite being dragged
            cX = getPointerX()
            cY = getPointerY()
            setSpritePosition(picked,getSpriteX(jug1)+cX-pX,getSpriteY(jug1)+cY-pY)
            pX = cX
            pY = cY
        else
            rem Sprite Dropped
            picked=0
        endif
    endif
endif	

if getPointerPressed()=1
    hit2 = getSpriteHitTest(jug2, getPointerX(), getPointerY())
    if hit2 > 0
        rem sprite picked up
        picked2 = jug2
        pX2 = getPointerX()
        pY2 = getPointerY()
    endif
else
    if picked2 >0
        if getPointerState()>0
            rem Sprite being dragged
            cX2 = getPointerX()
            cY2 = getPointerY()
            setSpritePosition(picked2 ,getSpriteX(jug2)+cX2 - pX2 ,getSpriteY(jug2)+ cY2 - pY2)
            pX2 = cX2
            pY2 = cY2
        else
            rem Sprite Dropped
            picked2 = 0
        endif
    endif
endif	

 if ( GetPointerPressed ( ) = 1 )
        x = GetPointerX ( )
        y = GetPointerY ( )


        
    endif
Print(x)
        Print(y)
    Sync ( )
loop
