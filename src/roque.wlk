import comidas.*
import pepita.*

object roque {
	var property posicion = game.at(4, 4)
	var property alimentoDeAve = alpiste
	var posicionRandom = game.at(1.randomUpTo(10), 1.randomUpTo(10))
	
	method imagen() = "jugador.png"
	
	method alimentar(personaje){
		if(alimentoDeAve != null){
			personaje.come(alimentoDeAve)
			game.addVisualIn(alimentoDeAve,posicionRandom)
			game.removeVisual(alimentoDeAve)
			alimentoDeAve = null
			posicionRandom = game.at(1.randomUpTo(10), 1.randomUpTo(10))
		}else{game.say(self, "No hay mas alimento ")
			
		 }
	}
	method encontrarAlimento(comida){
		if(alimentoDeAve != null){
			game.addVisualIn(alimentoDeAve,posicion)
			alimentoDeAve = comida
			game.removeVisual(comida)
			game.say(self,"tengo alimento")
		}else{(alimentoDeAve=null)
			alimentoDeAve=comida
		}
	}
}
