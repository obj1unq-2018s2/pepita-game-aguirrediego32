import ciudades.*
import comidas.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var imagen = "pepita1.png"
	var property posicion = game.at(3, 3)

	method come(comida) {
		energia = energia + comida.energia()
		self.estadosPepita()
	}

	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad and self.energia() > 20) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
			self.estadosPepita()
			game.say(self, "llegue a destino")
		} // TODO Esta validación está duplicada, producto de la forma en que ordenaste los ifs, ¿cómo se puede simplificar?
		else if (ciudad == unaCiudad) {
			self.seQueja()
			self.estadosPepita()
		} else if (self.energia() < 20) {
			game.say(self, "Dame de comer Primero")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		// TODO ¿Para qué es este chequeo? No parece correcto chequear acá, principalmente porque no hacés nada en el else.
		// El chequeo energia >20 está repetido 3 veces.
		if (energia > 20) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		} else {
			// TODO Este else vacío es innecesario, podés borrarlo.
		}
	}

	method seQueja() {
		game.say(self, "ya estoy en ciudad !")
	}

	method colisionar(entrenador) {
		entrenador.alimentar(self)
	}

	method estadosPepita() {
		// TODO El precálculo del estado es propenso a errores, sería más fácil calcular la imagen cuando te la pregunten.
		if (energia > 100) {
			imagen = "pepita-gorda-raw.png"
		} else if (energia < 10) {
			imagen = "pepita.png"
		} else if (energia < 100 and energia > 10) {
			imagen = "pepita1.png"
		}
	}

}

