import pepita.*

object manzana {
	var property posicion = game.at(5,1)
	const property imagen = "manzana.png"
	method colisionar(entrenador){
		entrenador.encontrarAlimento(self)}
	method energia() = 80
	
		
	
}

object alpiste {
	var property posicion = game.at(5,5)
	const property imagen = "alpiste.png"
	method energia() = 5
	method alimentar(personaje){}
	method colisionar(entrenador){
		entrenador.encontrarAlimento(self)
	}
	

}// falta terminar//