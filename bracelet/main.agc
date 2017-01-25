// Project: bracelet 
// Created: 2016-10-09

// Global variables

        SetVirtualResolution ( 1334, 750 )

    // use a new font for the default text
        defaultfontimage = LoadImage ( "ascii.png" )
        SetTextDefaultFontImage ( defaultfontimage )

    // background image
    background = CreateSprite ( LoadImage ( "game2/back.png" ) )
    SetSpriteSize(background, 1334, 750)
    SetSpritePosition ( background, 0, 0 )

    // foreground image
    foreground = CreateSprite ( LoadImage ( "game2/braclet.png" ) )
    SetSpritePosition ( foreground, 325, 150 )
    		/*
        // load foreground
        g_Level.foreground = CreateSprite ( LoadImage ( "game2/b.png" ) )
        SetSpriteSize(g_Level.foreground, 500, 500)
        SetSpritePosition ( g_Level.foreground, 380, 20)
		*/
      option1 = CreateSprite (LoadImage ("game2/option1.png") )
      //SetSpriteSize(option1, 100, 100)
      SetSpritePosition( option1, 325, 340)
      
      
      option2 = CreateSprite (LoadImage ("game2/option2.png") )
      //SetSpriteSize(option1, 100, 100)
      SetSpritePosition( option2, 325, 450)
      
      
      option3 = CreateSprite (LoadImage ("game2/option3.png") )
      //SetSpriteSize(option1, 100, 100)
      SetSpritePosition( option3, 325, 560)
      
      option4 = CreateSprite (LoadImage ("game2/option4.png") )
      //SetSpriteSize(option1, 100, 100)
      SetSpritePosition( option4, 325, 660)
      
      
     
do
    Print ( "Click an option to win" )
    initialTime = GetSeconds ( )
    Print(initialTime)


    if ( GetSpriteHit ( GetPointerX ( ), GetPointerY ( ) ) = option2 AND GetPointerPressed ( ) = 1 )
        win = CreateSprite (LoadImage ("game2/win.jpeg") )
		//SetSpriteSize(win, 100, 100)
		SetSpritePosition( win, 300, 200)
        //Print(str(GetPointerX ( )))
        //Print(str(GetPointerY ( )))
    else 
		initialTime = initialTime + 10
    endif

        
    Sync ( )
loop
 
