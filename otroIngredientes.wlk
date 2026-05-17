object hielo {
  method rendimientoQueOtorga(enCantidad) = 1.max(0.0007 * enCantidad)
}

object leche{
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.007 * dosisConsumida)

}

object gomitas {
    method rendimientoQueOtorga(enCantidad) = 1.max(0.07 * enCantidad)
}