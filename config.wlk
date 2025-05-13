import hector.*
import wollok.game.*

object config {
    method configurarTeclas() {
        keyboard.m().onPressDo({hector.sembrarMaiz()})
        keyboard.t().onPressDo({hector.sembrarTrigo()})
        keyboard.o().onPressDo({hector.sembrarTomaco()})
        keyboard.r().onPressDo({hector.regar()})

    }
    
}


