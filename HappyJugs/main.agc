 SetVirtualResolution ( 1334, 750 )

	background = CreateSprite ( LoadImage ( "background.png" ) )
	SetSpriteSize(background, 1334, 750)

	jug1 = CreateSprite (LoadImage ("tempJug_burned.png") )
    SetSpriteSize(jug1, 150, 150)
    
    drop = CreateSprite (LoadImage ("drip.png") )
    SetSpriteSize(drop, 15, 15)
    SetSpritePosition( drop, 1080, 90)


	jug2 = CreateSprite (LoadImage ("tempJug_burned.png") )
    SetSpriteSize(jug2, 100, 100)
    SetSpritePosition( jug2, 300, 200)
    
	drain = CreateSprite (LoadImage ("drain.png") )
	SetSpriteSize(drain, 50, 50)
	SetSpritePosition(drain, 50, 680)
	/*
	jug3 = CreateSprite (LoadImage ("jug-1_burned.png") )
	SetSpriteVisible(jug3, 0)
	
	jug4 = CreateSprite (LoadImage ("jug-2_burned.png") )
	SetSpriteVisible(jug4, 0)
	
	jug5 = CreateSprite (LoadImage ("jug-3_burned.png") )
    SetSpriteVisible(jug5, 0)
	 */
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

if GetSpriteCollision ( jug1, drop ) = 1
	
	//jug1 = LoadImage("jug-3_burned.png")
	
		AddSpriteAnimationFrame ( jug1, LoadImage ( "tempJug_burned.png" ) )
		AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-1_burned.png" ) )
		AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-2_burned.png" ) )
		AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-3_burned.png" ) )
		
		PlaySprite ( jug1, 3, 0, 1, 4)
		
endif

if GetSpriteCollision( jug1, jug2) = 1
			
			AddSpriteAnimationFrame(jug2, LoadImage ("jug-3_burned.png")) 
			AddSpriteAnimationFrame(jug1, LoadImage ("jug-1_burned.png"))
			
			PlaySprite ( jug2, 3, 0, 1, 1)
			PlaySprite ( jug1, 3, 0, 2, 2)
			
			
			
endif
		
if 	GetSpriteCollision ( jug1, drain ) = 1
		

			AddSpriteAnimationFrame ( jug1, LoadImage ( "tempJug_burned.png" ) )
		
			PlaySprite ( jug1, 3, 0, 1, 1)
	endif
		

// have a seperate do loop for the second jug

rem Do same for Jug 2 
if getPointerPressed() = 1
    hit2 = getSpriteHitTest(jug2, getPointerX(), getPointerY())
    if hit2 > 0
        rem sprite picked up
        picked2 = jug2
        pX2 = getPointerX()
        pY2 = getPointerY()
    endif
else
    if picked2 > 0
        if getPointerState()>0
            rem Sprite being dragged
            cX2 = getPointerX()
            cY2 = getPointerY()
            setSpritePosition(picked2,getSpriteX(jug2)+cX2 - pX2 ,getSpriteY(jug2) + cY2 - pY2)
            pX2 = cX2
            pY2 = cY2
        else
            rem Sprite Dropped
            picked2 = 0
        endif
    endif
endif	

if GetSpriteCollision ( jug2, drop ) = 1
	
		AddSpriteAnimationFrame ( jug2, LoadImage ( "tempJug_burned.png" ) )
		AddSpriteAnimationFrame ( jug2, LoadImage ( "jug-1_burned.png" ) )
		AddSpriteAnimationFrame ( jug2, LoadImage ( "jug-2_burned.png" ) )
		AddSpriteAnimationFrame ( jug2, LoadImage ( "jug-3_burned.png" ) )
		
		PlaySprite ( jug2, 3, 0, 1, 4)

endif

/*
if GetSpriteCollision( jug2, jug1) = 1
			
			AddSpriteAnimationFrame(jug1, LoadImage ("jug-2_burned.png"))
			AddSpriteAnimationFrame(jug2, LoadImage ("jug-3_burned.png"))
			
			PlaySprite ( jug1, 3, 0, 1, 1)
			PlaySprite ( jug2, 3, 0, 2, 2)
			
			
			
endif
*/
if 	GetSpriteCollision ( jug2, drain ) = 1  
		

			AddSpriteAnimationFrame ( jug2, LoadImage ( "tempJug_burned.png" ) )
		
			PlaySprite ( jug2, 3, 0, 1, 1)
	endif

if 	GetSpriteCollision ( jug2, drain ) = 1  AND GetImageExists(1)
		

			AddSpriteAnimationFrame ( jug2, LoadImage ( "tempJug_burned.png" ) )
		
			PlaySprite ( jug2, 3, 0, 1, 1)
	endif



	
	Sync()
loop

/*
do
	if 	GetSpriteCollision ( jug1, drain ) = 1
		
			AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-3_burned.png" ) )
			AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-2_burned.png" ) )
			AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-1_burned.png" ) )
			AddSpriteAnimationFrame ( jug1, LoadImage ( "tempJug_burned.png" ) )
		
			PlaySprite ( jug1, 3, 0, 1, 4)
	endif
		
	Sync()
loop
*/

	

/*
do 
	if GetSpriteCollision ( jug1, drop ) = 1
		
		AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-1_burned.png" ) )
		AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-2_burned.png" ) )
		AddSpriteAnimationFrame ( jug1, LoadImage ( "jug-3_burned.png" ) )


	PlaySprite ( jug1)

	endif
	
	Sync()
loop

*/

