import habitaciones.*

class Persona {
	const edad
	var sabeCocinar
	
	method edad()= edad
	method sabeCocinar()= sabeCocinar
	method entrarA(habitacion) {if (habitacion.estaVacia()) {habitacion.dejarEntrar(self)} else if (habitacion.condicionParaEntrar(self)) {habitacion.dejarEntrar(self)} else {self.error("No se puede entrar a esa habitación")}
	}
}
