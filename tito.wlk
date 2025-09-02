// Dejamos las constantes para otros casos.
// Como el enunciado dice que cada bebida que toma reemplaza a la anterior, debemos considerae la variable bebida.
// bebida no tiene un setter, entonces es una referencia. Los atributos de un objeto pueden ser privados del objeto (es decir, no tienen por qué tener un getter)

import bebidas.*

object tito {
  var bebida = cianuro
  var cantidadDeBebida = 0
  method peso(){
    return 70
  }
  method consumir(unaCantidad, unaBebida){
    bebida = unaBebida
    cantidadDeBebida = unaCantidad
    
  }
  
// acá está el polimorfismo. Para Tito son indistinguibles cuando les manda el mensaje rendimiento.
  method velocidad(){
    return (490*bebida.rendimiento(cantidadDeBebida))/self.peso()
  }
  
  // hicimos esto al final de la clase para hacer un assert.that
  method estaMuerto(){
    return bebida.rendimiento(cantidadDeBebida) == 0
  }
  
}



    
