import ciudades.*
import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"
	

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad and self.energia()>20 ) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
		if(self.energia()<20){
			game.say(self,"Dame de comer Primero")}
		else  {self.seQueja()
			}
		}

	
	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}
	method seQueja(){
	game.say(self,"ya estoy en ciudad !")
			
		}
		method colisionar(entrenador){
			 entrenador.alimentar(self)
		}
	}
	// clone sirve para clonar//
	// up(n) para poner la siguiente posicion//
	
