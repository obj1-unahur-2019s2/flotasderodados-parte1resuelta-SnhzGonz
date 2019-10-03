/*
 * Objetos que representan colores
 */
object azul {}
object rojo {}
object verde {}
object blanco {}
object negro {}
object bordo {}
object cremita {}

class ChevroletCorsa {
	// al ponerlo como var property, se puede preguntar color()
	// y se preserva el polimorfismo con los otros vehículos
	var property color  
	method capacidad() { return 4 }
	method velocidadMaxima() { return 150 }
	method peso() { return 1300 }
}

class RenaultKwid {
	// poniendo var property, permitimos poner y sacar el tanque
	var property tieneTanqueAdicional
	method capacidad() { 
    	if (tieneTanqueAdicional) {
			return 3
		} else {
			return 4
		}
	}
	method velocidadMaxima() {
    	if (tieneTanqueAdicional) {
			return 120
		} else {
			return 110
		}
	}
	method peso() {
    	if (tieneTanqueAdicional) {
			return 1350
		} else {
			return 1200
		}
	}
	method color() { return azul }
}

class AutoEspecial {
	var property color  
	var property capacidad
	var property velocidadMaxima
	var property peso
}


object trafic {
	var property motor 
	var property interior 

	method capacidad() { return interior.capacidad() } 
	method velocidadMaxima() { return motor.velocidadMaxima() }
	method peso() {
		return 4000 + motor.peso() + interior.peso()
	}
	method color() { return blanco }
}

object interiorComodo {
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular {
	method capacidad() = 12
	method peso() = 1000
}

object motorPulenta {
	method velocidadMaxima() = 130
	method peso() = 800
}

object motorBataton {
	method velocidadMaxima() = 80
	method peso() = 500
}

