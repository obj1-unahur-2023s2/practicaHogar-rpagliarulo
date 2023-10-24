import personas.*

class Habitacion {
	const ocupantes= []
	
	method nivelDeConfortQueAporta(persona)= persona.nivelDeConfortQueRecibe(10 + self.condicionAdicional(persona))
	method condicionAdicional(persona)= 0
	method ocupantes()= ocupantes
	method estaVacia()= ocupantes.size()== 0
	method puedeEntrar(persona)= true
	method dejarEntrar(persona) {ocupantes.add(persona)} 
	
}

class UsoGeneral inherits Habitacion {}

class Dormitorio inherits Habitacion {
	const personasQueDuermenAca= []
	
	override method condicionAdicional(persona)= if (self.duermeAca(persona)) 10/1.max(self.cantidadDePersonasQueDuermenAca()) else 0
	method duermeAca(persona)= personasQueDuermenAca.contains(persona)
	method cantidadDePersonasQueDuermenAca()= personasQueDuermenAca.size() 
	override method puedeEntrar(persona)= self.duermeAca(persona) or ocupantes.all({ocupante => self.duermeAca(ocupante)})
}

class Cocina inherits Habitacion {
	const metrosCuadrados
	
	override method condicionAdicional(persona)= if (persona.sabeCocinar()) valor.porcentajeAEvaluar() * metrosCuadrados / 100 else 0
	override method puedeEntrar(persona)= !persona.sabeCocinar() or (persona.sabeCocinar() && ocupantes.all({ocupante => ocupante.sabeCocinar()}))

}

class Banio inherits Habitacion {
	
	override method condicionAdicional(persona)= if (persona.edad()<= 4) 2 else 4
	override method puedeEntrar(persona)= ocupantes.map({ personas => personas.edad()}).any({edad => edad <= 4})
}

object valor {
	var property porcentajeAEvaluar= 10
}
