import comidas.*
import pepita.*

object roque {

	var property posicion = game.at(4, 4)
	var property alimentoDeAve = null
	var posicionRandom = game.at(1.randomUpTo(10), 1.randomUpTo(10))

	method imagen() = "jugador.png"

	method alimentar(personaje) {
		if (alimentoDeAve != null) {
			personaje.come(alimentoDeAve)
			game.addVisualIn(alimentoDeAve, posicionRandom)
			alimentoDeAve = null

			// TODO No entiendo para qué precalcular una posición random ni para qué guardarla en una variable de instancia.
			// Además el cálculo de la posición random está repetido.
			posicionRandom = game.at(1.randomUpTo(10), 1.randomUpTo(10))
		} else {
			game.say(self, "No hay mas alimento ")
		}
	}

	// TODO Este método debería estar usándose desde alimentar, así no repetís código.
	method tieneAlimento() {
		return alimentoDeAve != null
	}

	method encontrarAlimento(comida) {
		if (self.tieneAlimento()) {
			self.soltarLaComidaActual()
			
			// TODO En lugar de repetir esta línea podrías sacarla del if.
			self.agarrar(comida)
		} else {
			self.agarrar(comida)
		}
	}

	method agarrar(comida) {
		alimentoDeAve = comida
		game.removeVisual(comida)
	}

	method soltarLaComidaActual() {
		if (alimentoDeAve != null) game.addVisualIn(alimentoDeAve, posicion.down(1))
		// TODO Sería más prolijo que esto estuviera dentro del if.
		alimentoDeAve = null
	}

}

