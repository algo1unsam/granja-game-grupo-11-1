import wollok.game.*
import cultivos.*
import config.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"

	method regar() {
		const cultivosARegar = position.allElements().filter { obj => !(self == obj) }
			
		if (cultivosARegar.isEmpty())
			throw new DomainException(message = "Solo las plantas se pueden regar!", source = self)
			
		cultivosARegar.forEach { cultivo => cultivo.crecer() }
	}

	method sembrarMaiz(){
		self.mostrar(new Maiz(position=position))
	} 

	method sembrarTomaco(){
		self.mostrar(new Tomaco(position=position))
	}

	method sembrarTrigo(){
		self.mostrar(new Trigo(position=position))
	}

	method mostrar(cultivo){
		game.addVisual(cultivo)
	}
}