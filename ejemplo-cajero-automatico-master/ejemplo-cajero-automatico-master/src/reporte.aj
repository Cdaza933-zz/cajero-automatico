public aspect reporte {
	pointcut cargaComandos() : call( * ejemplo.cajero.Cajero.cargaComandos(..));

	// ejecución al retornar el método
	  after() returning(Object resultado): cargaComandos() {
		  
	  }
}