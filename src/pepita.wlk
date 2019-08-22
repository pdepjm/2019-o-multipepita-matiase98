object pepita {
	var energia = 0

	method estaCansada() {
		return energia < 50
	}
	
	method energia() {
		return energia
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
		var sumar = 0
		if(energia.between(300, 400))
			sumar = 10
		
		
		if(energia % 20 == 0)
			sumar = sumar + 15
		
		
		return (energia/5 + sumar)
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	
	method haceLoQueQuieras() {
		if(self.estaCansada())
		self.come(alpiste)
		
		if(self.estaFeliz())
		self.vola(8)
	}
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var mojado = false
	var restar = 0
	
	method mojarse() {
		mojado = true
		restar = 5
	}
	
	method secarse() {
		mojado = false 
		restar = 0
	}
	
	method energiaQueOtorga() {
		if(mojado)
		restar = 5
		
		return 20 - restar
	}
}

object canelon {
	var salsa = 0
	var queso = 0
	
	method ponerSalsa() {
		salsa = 5
	}
	
	method sacarSalsa() {
		salsa = 0
	}
	
	method ponerQueso() {
		queso = 7
	}
	
	method sacarQueso() {
		queso = 0
	}
	
	method energiaQueOtorga() {
		return 20 + salsa + queso
	}
}