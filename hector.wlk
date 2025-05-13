import wollok.game.*
import cultivos.*
import config.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"

	method sembrarTrigo() {}
	method sembrarTomaco() {}

	method regar() {
		const cultivosARegar = position.allElements().filter { obj => !(self == obj) }
			
		if (cultivosARegar.isEmpty())
			throw new DomainException(message = "Solo las plantas se pueden regar!", source = self)
			
		cultivosARegar.forEach { cultivo => cultivo.crece() }
	}
	method sembrarMaiz(){
		const maiz = new Maiz(position=position)
		game.addVisual(maiz)
	} 
}