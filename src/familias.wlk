class Familia {
	const integrantes= #{}
	const casa= []
	
	method habitacionesOcupadas()= casa.filter({habitacion => !habitacion.estaVacia()})
	method responsablesDeCasa()= self.habitacionesOcupadas().map({ocupante => ocupante.edad()})
	
}
