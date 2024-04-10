object olivia {
	
	var concentracion = 6
	
	method concentracion() = concentracion
	
	method recibeMasajes(){
		concentracion = concentracion + 3
	}
	
	method recibeBanio(){}
	
	method discute(){
		concentracion = 0.max(concentracion-1)
	}
	
}

object bruno {
	
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibeMasajes(){
		esFeliz = true
	}
	
	method recibeBanio(){
		peso = 0.max(peso - 500)
		tieneSed = true
	}
	
	method tomaAgua(){
		tieneSed = false
	}
	
	method comeFideos(){
		peso = peso + 250
		tieneSed = true
	}
	
	method corre(){
		peso = 0.max(peso-300)
	}
	
	method veNoticiero(){
		esFeliz = false
	}
	
	method estaPerfecto(){
		return esFeliz and not tieneSed and peso.between(50000, 70000)
	}
	
	method mediodiaEnCasa(){
		self.comeFideos()
		self.tomaAgua()
		self.veNoticiero()
	}
	
}

object ramiro {
	
	var nivelContractura = 0
	var pielGrasosa = false
	
	method nivelContractura() = nivelContractura
	method pielGrasosa() = pielGrasosa
	
	method recibeMasajes(){
		nivelContractura = 0.max(nivelContractura - 2)
	}
	
	method recibeBanio(){
		pielGrasosa = false
	}
	
	method comeBigMac(){
		pielGrasosa = true
	}
	
	method bajaALaFosa(){
		pielGrasosa = true
		nivelContractura = nivelContractura + 1
	}
	
	method juegaPaddle(){
		nivelContractura = nivelContractura + 3
	}
	
	method diaDeTrabajo(){
		self.bajaALaFosa()
		self.comeBigMac()
		self.bajaALaFosa()
	}
	
}