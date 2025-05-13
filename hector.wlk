import wollok.game.*
import cultivos.*
import config.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"

	method sembrarMaiz(){
		const maiz = new Maiz(position=position)
		game.addVisual(maiz)
	} 
}