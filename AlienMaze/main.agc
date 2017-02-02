
// Project: AlienMaze 
// Created: 2017-02-01

#include "start.agc"
function CreateBackground( )
    LoadImage ( 1, "space.jpg" )
	CreateSprite ( 1, 1 )
	FixSpriteToScreen ( 1, 1 )
endfunction

function CreateStarField( )
    LoadImage ( 4, "particle.png" )

    CreateParticles           ( 1, 550.0, 0.0 )
	SetParticlesImage         ( 1, 4 )
	SetParticlesStartZone     ( 1, 0, 10, 0, 400 )
	SetParticlesDirection     ( 1, -50.0, 0.0 )
	SetParticlesLife          ( 1, 15 )
	SetParticlesSize          ( 1, 4 )
	SetParticlesAngle         ( 1, 0 )
	SetParticlesFrequency     ( 1, 60 )
	SetParticlesVelocityRange ( 1, 0.5, 4.0 )
	FixParticlesToScreen      ( 1, 1 )
endfunction


Begin ( )

function Begin ( )
    // load everything for the game
    SetVirtualResolution ( 550, 400 )

    CreateBackground      ( )
    CreateStarField       ( )
endfunction


	maze = CreateSprite(LoadImage("testMaze_burned.png"))
	SetSpriteSize(maze,  250, 250)
	SetSpritePosition(maze, 150, 50)

	robot = CreateSprite(LoadImage("robot1_burned.png"))
	SetSpriteSize(robot, 30, 30)
	SetSpritePosition(robot, 240, 170)


	case1 = CreateSprite(LoadImage("case1.png"))
	//SetSpriteSize(case1,  50, 25)
	SetSpritePosition(case1, 10, 340)

	case2 = CreateSprite(LoadImage("case2.png"))
	//SetSpriteSize(case2, 50, 25)
	SetSpritePosition(case2, 250, 340)

	win = CreateSprite(LoadImage("case3.png"))
	//SetSpriteSize(win,  50, 25)
	SetSpritePosition(win, 10, 370)

	case4 = CreateSprite(LoadImage("case4.png"))
	//SetSpriteSize(case4, 50, 25)
	SetSpritePosition(case4, 250, 370)

	/*
do
     if ( GetPointerPressed ( ) = 1 )
        x# = GetPointerX ( )
        y# = GetPointerY ( )
        
       
        endif
        
        //Print(x#)
        //Print(y#)
        Print("How does the Robot read the Alien Language to")
        Print(" get the Artifact in the maze If each Code is a ")
        Print("coordinate in any direction?")
    Sync()
loop
*/
do
    Print("How does the Robot read the Alien Language to")
    Print(" get the Artifact in the maze If each Code is a ")
    Print("coordinate in any direction?")
    initialTime = GetSeconds ( )
    


    if ( GetSpriteHit ( GetPointerX ( ), GetPointerY ( ) ) = win AND GetPointerPressed ( ) = 1 )
        SetSpritePosition(robot, 200, 140) 
        winner = CreateSprite (LoadImage ("win.jpeg") )
		SetSpriteSize(winner, 300, 300)
		SetSpritePosition( winner, 100, 50)
		//Print(str(GetPointerX ( )))
        //Print(str(GetPointerY ( )))
        endif
    if 	( GetSpriteHit ( GetPointerX ( ), GetPointerY ( ) ) = case1 AND GetPointerPressed ( ) = 1 )
    NewinitialTime = initialTime + 25
        
	endif
    
	//Print(NewinitialTime)
    Sync ( )
    
loop
 
