import wollok.game.*

object aspersor{
    var property position = game.at(5,5)
    method image() = "aspersor.png"
    method posiciones() = [game.at(4,4), game.at(5,4), game.at(6,4), game.at(4,5), game.at(6,5), game.at(4,6), game.at(5,6), game.at(6,6)]
    method objetos() = self.posiciones().flatmap({posicion => game.getObjectsIn(posicion)})
    method regar() {
        self.objetos().forEach({objeto => objeto.regar()})
    }
    method regar2(){
        game.onTick(5000, "regar", {self.regar()})
    }
}