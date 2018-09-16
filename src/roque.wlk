import comidas.*
import pepita.*

object roque {
	var property posicion = game.at(4, 4)
	var property alimentoDeAve = null
	var posicionRandom = game.at(1.randomUpTo(10), 1.randomUpTo(10))
	
	method imagen() = "jugador.png"
	
	method alimentar(personaje){
		if(alimentoDeAve != null){
			personaje.come(alimentoDeAve)
			game.addVisualIn(alimentoDeAve,posicionRandom)
			alimentoDeAve = null
			posicionRandom = game.at(1.randomUpTo(10), 1.randomUpTo(10))
		}else{game.say(self, "No hay mas alimento ")
			
		 }
	}
	method tieneAlimento(){
		return alimentoDeAve!=null
	}
	method encontrarAlimento(comida){
		if(self.tieneAlimento()){
			self.soltarLaComidaActual()
			self.agarrar(comida)
		}else{
			self.agarrar(comida)
		}
	}
	method agarrar(comida){
		alimentoDeAve= comida
		game.removeVisual(comida)
	}
	method soltarLaComidaActual(){
	if(alimentoDeAve != null)
	game.addVisualIn(alimentoDeAve,posicion.down(1))
	alimentoDeAve=null
	}
}