SetClearColor ( 0, 255, 0 )

input as String 
input = "test"

StartTextInput ( )
str1 as string = ""

Print(input)

do
    if GetTextInputCompleted ( ) = 1 
    str1 = GetTextInput ( )
    endif


    Print ( str1 )


    Sync ( )
loop

do
	if str1 = input THEN PRINT ("you win")
		Sync()
loop
