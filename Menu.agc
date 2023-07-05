Menu:

Createtext(2,"Batalha Espacial")
SetTextSize(2,100)
SetTextPosition(2,(768-GetTextTotalWidth(2))/2,180)

createtext(3,"MAIOR SCORE: ")
SetTextSize(3,60)
SetTextPosition(3,768-GetTextTotalWidth(3),0)

CreateText(4, "Presione o mouse para começar!")
SetTextSize(4,60)
SetTextPosition(4,(768-GetTextTotalWidth(4))/2,900)

	      
Gosub EsconderSprites
Gosub MostrarMenu

repeat
	sync()
until GetPointerPressed()=1

gameover=0

Gosub MostrarSprites
Gosub EsconderMenu

Return

EsconderSprites:	
	for i=1 to 119
		SetSpriteVisible(i,0)
	next i
return

MostrarSprites:
	for i=1 to 119
		SetSpriteVisible(i,1)
	next i 
return
		
EsconderMenu:
	SetTextVisible(2,0)
	SetTextVisible(4,0)
return

MostrarMenu:
	SetTextVisible(2,1)
	SetTextVisible(4,1)
return
	
