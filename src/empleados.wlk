object gimenez {

	var property sueldo = 15000
	var property dinero = 0

	// si tenes la property esto no hace falta !
	method sueldo() {
		return sueldo
	}

	// esto tampoco :)
	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		dinero += sueldo
		return dinero
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var dinero = 0
	var deuda = 0

	method venderEmpanada(cant) {
		cantidadEmpanadasVendidas += cant
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrarSueldo() {
		dinero = self.sueldo()
		if (dinero>=deuda){
			dinero=dinero-deuda
			deuda=0
		}else{ 
			deuda=deuda-dinero
			dinero=0
		}
	}

	method gastar(cuanto){ 
		if (dinero>=cuanto){
		dinero-=cuanto
		}else{ 
			deuda+=cuanto-dinero
			dinero=0
		}		
	}

 	method totaldeuda() {
		
		return deuda
 	}

	method totaldinero() {
		 return dinero
	}

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}
