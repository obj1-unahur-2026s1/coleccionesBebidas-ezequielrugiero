import frutas.*
import otroIngredientes.*
object whisky {
  method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida
}

object terere {
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida) = 0
}

object licuandoDeFrutas {
  const frutas = []
  const otrosIngredientes = []
  
// agregar una fruta a la lista fruta
  method agregar(unIngrediente){
    return frutas.add(unIngrediente)
  }
// agregar un ingreditne a la lista otros ingredientes  
  method aOtrosAgregar(unIngrediente){
    return otrosIngredientes.add(unIngrediente)
  }

  // suma todos los nutrientes del licuado
  method nutrientePorLitro(){
    return frutas.sum({c => c.nutrientes()})
  }
//esta mal lo tengo que cambiar
 method redimientoOtrosingredientes(dosisConsumida){
    return otrosIngredientes.sum({c => c.rendimientoQueOtorga(dosisConsumida)})
  }

  method rendimientoQueOtorga(dosisConsumida) = dosisConsumida * self.nutrientePorLitro()


}
object agua {
   method rendimientoQueOtorga(dosisConsumida) = 1 * dosisConsumida
}
// Acá no entindo si tenia que hacer una lista o no ?
object aguaSaborizada {
  var property bebidaBase = agua
  var property saborizante = whisky
  var property cantidadTotal = 10 
    
  method rendimientoQueOtorga(){
    const tresCuarto = cantidadTotal / 4
    const unCuarto = (cantidadTotal * 3)/ 4
    return bebidaBase.rendimientoQueOtorga(unCuarto) + saborizante.rendimientoQueOtorga(tresCuarto)


  }

  
}

object coctel {
  const ingredientes = []
  var property cantidadTotal = 10 
  method agregar(unIngrediente){
    ingredientes.add(unIngrediente)
  }

   method rendimientoQueOtorga(){
     return ingredientes.sum({ingredientes => ingredientes.rendimientoQueOtorga(cantidadTotal)})
   }

}

