// Project: FunnyWindows 
// Created: 2016-10-09

// Global variables

type sItem
    sprite as integer
    state as integer
    direction as integer
endtype

type sLevel
        background as integer
        foreground as integer
        pause as integer
        play as integer
        pauseButton as integer
		        
endtype
global g_Overlay = 0
global eDisplayStartGame = 2
global eLoadLevel = 3
global g_State = 0
global g_Level as sLevel
global eDisplayFadeIn = 0
global eDisplayMainMenu = 1
global dim g_Clouds [ 3 ]
global dim g_Text [ 5 ]

SetupMainMenu ( )

do
    select g_State:
        case 0:
                        DisplayFadeIn ( )
        endcase

        case 1:
                DisplayMainContents ( )
                endcase

        case 2:
                DisplayStartGame ( )
                endcase

        case 3:
                LoadLevel ( 0 )
                endcase

       endselect

    Sync ( )
loop


function SetupMainMenu ( )
        SetVirtualResolution ( 1334, 750 )

    // use a new font for the default text
        defaultfontimage = LoadImage ( "ascii.png" )
        SetTextDefaultFontImage ( defaultfontimage )

    // background image
    background = CreateSprite ( LoadImage ( "main_menu/background.png" ) )
    SetSpriteSize(background, 1334, 750)
    SetSpritePosition ( background, 0, 0 )

    // foreground image
    foreground = CreateSprite ( LoadImage ( "main_menu/bebras.png" ) )
    SetSpritePosition ( foreground, 0, 250 )

    // smack it logo
    logo = CreateSprite ( LoadImage ( "main_menu/bebras_logo.png" ) )
    SetSpritePosition ( logo, 69, 0 )


    // text
    g_Text [ 1 ] = CreateText ( "" )
        g_Text [ 2 ] = CreateText ( "START" )
        g_Text [ 3 ] = CreateText ( "" )
        g_Text [ 4 ] = CreateText ( "" )
        g_Text [ 5 ] = CreateText ( "" )

        for i = 1 to 5
                SetTextSize ( g_Text [ i ], 24.0 )
        next i

        space = 50

        SetTextPosition ( g_Text [ 1 ], 15.0, -230.0 )
        SetTextPosition ( g_Text [ 2 ], 90.0, 200.0 )
        SetTextPosition ( g_Text [ 3 ], 70.0, 160.0 + ( space * 1 ) )
        SetTextPosition ( g_Text [ 4 ], 30.0, 160.0 + ( space * 2 ) )
        SetTextPosition ( g_Text [ 5 ], 30.0, 160.0 + ( space * 3 ) )


        g_Overlay = CreateSprite ( LoadImage ( "black.jpg" ) )
        SetSpritePosition ( g_Overlay, 0.0, 0.0 )
        SetSpriteSize ( g_Overlay, 1334, 750 )


        LoadMusicOGG ( 1, "FamiliarRoads.ogg" )
        PlayMusicOGG ( 1, 1 )

      
endfunction

function DisplayMainContents ( )
    if GetPointerPressed ( ) = 1
        x# = GetPointerX ( )
        y# = GetPointerY ( )

        if x# >= 80 and x# < 220 and y# > 190 and y# < 240
            g_State = eDisplayStartGame
        endif
    endif

endfunction

function DisplayFadeIn ( )
        // fade in
        alpha = GetSpriteColorAlpha ( g_Overlay )

        if alpha > 4
                alpha = alpha - 4
                SetSpriteColor ( g_Overlay, 255, 255, 255, alpha )
        else
                g_State = eDisplayMainMenu
        endif

       
endfunction

function DisplayStartGame ( )
        // fade in
        alpha = GetSpriteColorAlpha ( g_Overlay )

        if alpha < 255 - 4
                alpha = alpha + 4
                SetSpriteColor ( g_Overlay, 255, 255, 255, alpha )
        else
                for i = 1 to 5
                        SetTextVisible ( g_Text [ i ], 0 )
                next i

                g_State = eLoadLevel
        endif

endfunction

rem This is where I load the level

function LoadLevel ( level as integer )
	 SetVirtualResolution ( 1334, 750 )
        // load background
        g_Level.background = CreateSprite ( LoadImage ( "game1/water-back.jpg" ) )
		SetSpriteSize(g_Level.background, 1334, 750)
		SetSpritePosition ( g_Level.background, 0, 0 )
		
        // load foreground
        g_Level.foreground = CreateSprite ( LoadImage ( "game1/boats.png" ) )
        SetSpriteSize(g_Level.foreground, 500, 500)
        SetSpritePosition ( g_Level.foreground, 380, 20)
		
      option1 = CreateSprite (LoadImage ("game1/case1.png") )
      //SetSpriteSize(option1, 100, 100)
      SetSpritePosition( option1, 380, 540)
      
      option2 = CreateSprite (LoadImage ("game1/case2.png") )
      //SetSpriteSize(option1, 100, 100)
      SetSpritePosition( option2, 380, 590)
      
      
      option3 = CreateSprite (LoadImage ("game1/case3.png") )
      //SetSpriteSize(option1, 100, 100)
      SetSpritePosition( option3, 380, 640)
      
      option4 = CreateSprite (LoadImage ("game1/case4.png") )
      //SetSpriteSize(option1, 100, 100)
      SetSpritePosition( option4, 380, 690)
      
      
     
do
    Print ( "Click an option to win" )
    initialTime = GetSeconds ( )
    Print(initialTime)


    if ( GetSpriteHit ( GetPointerX ( ), GetPointerY ( ) ) = option3 AND GetPointerPressed ( ) = 1 )
        win = CreateSprite (LoadImage ("game1/win.jpeg") )
		//SetSpriteSize(win, 100, 100)
		SetSpritePosition( win, 300, 200)
        //Print(str(GetPointerX ( )))
        //Print(str(GetPointerY ( )))
    else 
		initialTime = initialTime + 10
    endif

        
    Sync ( )
loop
 endfunction
