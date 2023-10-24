import habitaciones.*

class Persona {
	const edad
	var sabeCocinar
	var nivelDeConfort
	
	method edad()= edad
	method sabeCocinar()= sabeCocinar
	method entrar(habitacion) {if (habitacion.estaVacia() or habitacion.puedeEntrar(self)) {habitacion.dejarEntrar(self)} else {self.error("No se puede ingresar a esta habitacion")}}
	method nivelDeConfortQueRecibe(cantidad) {nivelDeConfort += cantidad}

}

