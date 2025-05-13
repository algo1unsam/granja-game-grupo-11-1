import config.*

class Maiz{
	var property position 
	var property estado = bebe
	var property image = "corn_baby.png" 


	method crecer(){
		if(estado == bebe){
			image = "corn_adult.png"
			estado = adulta
		}
	}
}

class Trigo {
	var property position 
	var property estado = [0,1,2,3]
	var property image = "wheat_" + estado.first() +".png" 


	method crecer(){
		estado.add(estado.first())
		estado.remove(estado.first())
	}
}

class Tomaco {
	var property position 
	var property estado = adulta
	var property image = "tomaco.png" 

	method dentroRango() = (position.up(1).y() < 10)


	method crecer(){
		if(self.dentroRango()){
			position = position.up(1)
		}
	}
}





object bebe {}
object adulta {}