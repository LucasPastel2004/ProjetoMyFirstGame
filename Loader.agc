loader:
LoadImage(1,"DurrrSpaceShip_resized.png")
LoadImage(2,"bullet.png")
LoadImage(3,"pitrizzo-SpaceShip-gpl3-opengameart-96x96.png")
LoadImage(4,"tiroInimigo.png")

CreateSprite(1,1)
Jogadorx=GetVirtualWidth()/2 - GetSpriteWidth(1)/2
Jogadory=GetVirtualHeight()-GetSpriteHeight(1)-10 
SetSpritePosition(1,Jogadorx,Jogadory)

CreateSprite(2,2)
SetSpritePosition(2,-100,-100)


CreateSprite(3,3)
SetSpritePosition(3,100,20)

for i=0 to 8
	CreateSprite(110+i,4)
next i	

return
 
