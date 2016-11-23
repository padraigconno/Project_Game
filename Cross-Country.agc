SetScreenResolution(420, 720)
SetVirtualResolution ( 1334, 750 )

background_4 = CreateSprite(LoadImage(1, "background.png"))
SetSpritePosition(0,0)
SetSpriteSize(1334, 750)

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

// Make Terrain  


