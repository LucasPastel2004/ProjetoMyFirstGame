FazerEstrelas:
	CreateImageColor(5,255,255,255,255)
	for i=1 to 100
		CreateSprite(i+5,5)
		SetSpriteSize(i+5,3,3)
		SetSpritePosition(i+5,random(1,768),random(1,1024))
		SetSpriteColor(i+5,Random(150,255),Random(150,255),Random(150,255),Random(150,200))
	next i
return

MoverEstrelas:
for i=1 to 100
	EstrelaY=GetSpriteY(5+i)+10
	If EstrelaY>1024
		EstrelaY=0
	EndIf
	SetSpritePosition(i+5,GetSpritex(i+5),EstrelaY)
next i
Return
				


