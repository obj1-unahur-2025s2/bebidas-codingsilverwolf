// Polimorfismo: concepto más importante de la materia. Independientemente de la forma, mantiene su comportamiento. Entre ellos comparten mensajes del mismo tipo (mensajes polimórficos)

// Delegar responsabilidades a cada objeto de forma polimórfica.

// Delegar responsabilidades induce el polimorfismo

// Las bebidas van a ser objetos polimórficos. Este hecho no implica que tengan los mismos métodos y atributos.

object wisky {
  method rendimiento(dosis){
    return 0.9**dosis
  }
  
}

object terere {
  // lo que sostiene el polimorfismo es el nombre y la cantidad de argumentos. Podría poner rendimiento(unaDosis)
  method rendimiento(dosis){
    return (0.1*dosis).max(1)
  }
  
}

object cianuro {
  // Necesito que reciba la dosis para respetar el polimorfismo.
  method rendimiento(dosis){
    return 0
  }
}