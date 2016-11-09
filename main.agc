
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
        //pause as integer
        //play as integer
       // pauseButton as integer

        
endtype

global g_Level as sLevel
global dim g_Clouds [ 3 ]
global dim g_Text [ 5 ]

SetupMainMenu ( )
function SetupMainMenu ( )
        SetVirtualResolution ( 320, 480 )

    // use a new font for the default text
        defaultfontimage = LoadImage ( "ascii.png" )
        SetTextDefaultFontImage ( defaultfontimage )

    // background image
    background = CreateSprite ( LoadImage ( "main_menu/background.png" ) )
    SetSpritePosition ( background, 0, 0 )

    // foreground image
    foreground = CreateSprite ( LoadImage ( "main_menu/bebras.png" ) )
    SetSpritePosition ( foreground, 0, 250 )

    // smack it logo
    logo = CreateSprite ( LoadImage ( "main_menu/bebras_logo.png" ) )
    SetSpritePosition ( logo, 69, 0 )


  // clouds
    g_Clouds [ 1 ] = CreateSprite ( LoadImage ( "main_menu/cloud1.png" ) )
    g_Clouds [ 2 ] = CreateSprite ( LoadImage ( "main_menu/cloud2.png" ) )
    g_Clouds [ 3 ] = CreateSprite ( LoadImage ( "main_menu/cloud3.png" ) )

    SetSpritePosition ( g_Clouds [ 1 ], 350, 330 )
    SetSpritePosition ( g_Clouds [ 2 ], 500, 200 )
    SetSpritePosition ( g_Clouds [ 3 ], 400, 130 )

    // text
    g_Text [ 1 ] = CreateText ( "SMACK IT" )
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


      //  g_Overlay = CreateSprite ( LoadImage ( "black.jpg" ) )
      //  SetSpritePosition ( g_Overlay, 0.0, 0.0 )
      //  SetSpriteSize ( g_Overlay, 320, 480 )


     //   LoadMusicOGG ( 1, "FamiliarRoads.ogg" )
     //   PlayMusicOGG ( 1, 1 )

      
endfunction

//LoadImage(1, "boat1.png")
//CreateSprite(1, 1)
//SetSpritePosition(1, 0, 0)


//LoadImage(2, "boat2.png")
//CreateSprite(2, 1)
//SetSpritePosition(2, 0, 200)

do


   // Print( ScreenFPS() )
    Sync()
loop
