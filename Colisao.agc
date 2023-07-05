colisao:


if GetSpriteCollision(2,3) =1
	
	playsound(explosao)
	score=score+10
	Inimigox=100: Inimigoy=-50
	atirou=0
	Tirox=-50 :Tiroy=-50
endif


for i=0 to 9
	if GetSpriteCollision(110+i,1)=1
		PlaySound(explosao)
		gameover=1
		SetSpritePosition(110,-100,-100)
		SetSpritePosition(111,-100,-100)
		SetSpritePosition(112,-100,-100)
		SetSpritePosition(113,-100,-100)
		SetSpritePosition(114,-100,-100)
		SetSpritePosition(115,-100,-100)
		SetSpritePosition(116,-100,-100)
		SetSpritePosition(117,-100,-100)
		SetSpritePosition(118,-100,-100)
		SetSpritePosition(119,-100,-100)
		Inimigox=100: Inimigoy= -50
	
	endif
next i		


return	 
