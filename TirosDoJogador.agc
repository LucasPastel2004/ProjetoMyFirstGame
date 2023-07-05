TirosDoJogador:

if GetPointerPressed()=1 and atirou=0
	PlaySound(tiro)
	atirou=1
	Tirox=GetSpriteX(1)+GetSpriteWidth(1)/2-GetSpriteWidth(2)/2
	Tiroy=GetSpriteY(1)-40
endif

if atirou=1
	Tiroy=Tiroy-20
endif

if Tiroy<-GetSpriteHeight(2)
	atirou=0
endif

SetSpritePosition(2,Tirox,Tiroy)	

return		
