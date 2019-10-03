class Pedido {
	const property distanciaARecorrer
	const property tiempoMaximo
	const property cantidadPasajeros
	const property coloresIncompatibles
	
	method velocidadRequerida(){
		return distanciaARecorrer / tiempoMaximo
	}
	method puedeSatisfacerUnPedido(vehiculo){
		return self.satisfaceVelocidad(vehiculo) and
			self.satisfaceCapacidad(vehiculo) and
			self.satisfaceColor(vehiculo)
	}
	method satisfaceVelocidad(vehiculo){
		return vehiculo.velocidadMaxima() >= self.velocidadRequerida() + 10
	}
	method satisfaceCapacidad(vehiculo){
		return vehiculo.capacidad() >= cantidadPasajeros
	}
	method satisfaceColor(vehiculo){
		return not coloresIncompatibles.any{c => c == vehiculo.color()}
	}
	method acelerar(){
		tiempoMaximo -= 1
	}
	method relajar(){
		tiempoMaximo += 1
	}
}
