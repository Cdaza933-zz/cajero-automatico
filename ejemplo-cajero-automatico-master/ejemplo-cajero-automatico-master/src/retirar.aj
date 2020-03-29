import java.util.List;

import ejemplo.cajero.control.Comando;
import ejemplo.cajero.control.ComandoRetirar;

public aspect retirar {
	pointcut cargaComandos() : call( * ejemplo.cajero.Cajero.cargaComandos(..));

	// ejecución al retornar el método
		  after() returning(List<Comando> comandos): cargaComandos() {
			  comandos.add(new ComandoRetirar()); 
		  }
}