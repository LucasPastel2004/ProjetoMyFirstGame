MovimentoInimigo:

Inimigoy=Inimigoy+1

if DirecaoInimigo=4 and Inimigox>GetVirtualWidth()-GetSpriteWidth(3)
	DirecaoInimigo=-4
endif

//Inimigox=Inimigox+DirecaoInimigo

if DirecaoInimigo=-4 and Inimigox<0
	DirecaoInimigo=4
endif

Inimigox=Inimigox+DirecaoInimigo

SetSpritePosition(3,Inimigox,Inimigoy)

return		


TiroInimigo:
if inimigoatirou=0
	if random(1,10)= 1 or 2 or 3
		inimigoatirou=1
		for i=0 to 9
			SetSpritePosition(110+i,GetSpriteX(3)+70,GetSpriteY(3)+70)
		next i
	endif
endif			

if inimigoatirou=1
	
		SetSpritePosition(110,getspritex(110)-6,getspritey(110)+8)
		SetSpritePosition(111,getspritex(111)-4,getspritey(111)+8)
		SetSpritePosition(112,getspritex(112)-7,getspritey(112)+8)
		SetSpritePosition(113,getspritex(113)-9,getspritey(113)+8)
		SetSpritePosition(114,getspritex(114),getspritey(114)+8)
		SetSpritePosition(115,getspritex(115)+1,getspritey(115)+8)
		SetSpritePosition(116,getspritex(116)+3,getspritey(116)+8)
		SetSpritePosition(117,getspritex(117)+5,getspritey(117)+8)
		SetSpritePosition(118,getspritex(118)+7,getspritey(118)+8)
		SetSpritePosition(119,getspritex(119),getspritey(119)+8)
		
		
endif

if getspritey(110)>1024 or GetSpriteX(110)>768
	inimigoatirou=0
endif

Return
