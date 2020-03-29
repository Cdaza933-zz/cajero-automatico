public aspect auditoria {
	pointcut cargaComandos() : call( * ejemplo.cajero.Cajero.cargaComandos(..));

	// ejecución al retornar el método
	  after() returning(Object resultado): cargaComandos() {
		  System.out.println("Retornando");
		  System.out.println("\t resultado  : " + resultado);
	  }
}