#include "Loader.agc"
#include "Movimento.agc"
#include "TirosDoJogador.agc"
#include "sons.agc"
#include "MovimentoInimigo.agc"
#include "Colisao.agc"
#include "estrelas.agc"
#include "Texto.agc"
#include "Menu.agc"

SetVirtualResolution( 768, 1024)
UseNewDefaultFonts( 1 )
SetWindowTitle( "Batalha Espacial" ) 


Jogadorx as float 
Jogadory as float
Tirox as float = -100
Tiroy as float
atirou = 0

Inimigox as float
Inimigoy as float
DirecaoInimigo = 4

score=0
MaiorScore=0
gameover=1

Gosub loader
Gosub sons
Gosub Texto
Gosub FazerEstrelas
Gosub musica





do
	
	
	if gameover=1
		Gosub Menu
		score=0
		
	endif	
	
	Gosub movimento
	Gosub TirosDoJogador
	Gosub MovimentoInimigo
	Gosub MoverEstrelas
	Gosub TiroInimigo
	
	
	SetTextString(1,"Score: "+str(score))
	if score>MaiorScore
		MaiorScore=score
	endif
	SetTextString(3,"MaiorScore: "+str(MaiorScore))	
	
	Gosub colisao
    Print( ScreenFPS() )
    Sync()
loop


