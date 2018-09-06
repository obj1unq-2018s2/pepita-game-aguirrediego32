import ciudades.*
import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	var imagen = "pepita1.png"
	var property posicion = game.at(3,3)
	
	

	method come(comida) {
		energia = energia + comida.energia()
		self.estadosPepita()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad and self.energia()>20){
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
			self.estadosPepita()
			game.say(self,"llegue a destino")	
		}
		else if(ciudad == unaCiudad) {
			self.seQueja()
			self.estadosPepita()
			}
			else if(self.energia()<20){
				game.say(self,"Dame de comer Primero")
			}
		}

	
	method energiaParaVolar(distancia) = 15 + 5 * distancia
		

	method move(nuevaPosicion) {
		if(energia>20){
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
		}else{}
	}
	method seQueja(){
	game.say(self,"ya estoy en ciudad !")
			
		}
		method colisionar(entrenador){
			 entrenador.alimentar(self)
		}
	method estadosPepita(){
		if(energia>100){
			imagen = "pepita-gorda-raw.png"
		}else if(energia<10){
			imagen = "pepita.png"
		}	
		else if(energia<100 and energia>10){
			imagen="pepita1.png"
		}
	}	
}
	// clone sirve para clonar//
	// up(n) para poner la siguiente posicion//