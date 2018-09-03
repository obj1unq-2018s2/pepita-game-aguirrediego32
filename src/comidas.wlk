import pepita.*

object manzana {
	const property imagen = "manzana.png"
	method colisionar(entrenador){
		entrenador.encontrarAlimento(self)}
	method energia() = 80
	
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	method alimentar(personaje){}
	method colisionar(entrenador){
		entrenador.encontrarAlimento(self)
	}

}// falta terminar//