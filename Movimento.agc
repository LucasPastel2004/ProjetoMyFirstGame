movimento:

Jogadorx=Jogadorx+GetDirectionX()*12

if Jogadorx<0
	Jogadorx=0
endif

if Jogadorx>GetVirtualWidth()-GetSpriteWidth(1)
    Jogadorx=GetVirtualWidth()-GetSpriteWidth(1)
endif

SetSpritePosition(1,Jogadorx,Jogadory)

return   	
