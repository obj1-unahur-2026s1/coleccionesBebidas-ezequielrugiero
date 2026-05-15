import frutas.*
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

  method agregarIngrediente(unIngrediente){
    return frutas.add(unIngrediente)
  }

  // suma todos los nutrientes del licuado
  method nutrientePorLitro(){
    return frutas.sum({c => c.nutrientes()})
  }
}


