package com.rocket.go.rocket.card

import com.rocket.go.seguridad.User
import grails.plugin.springsecurity.annotation.Secured

class TransaccionController {

    def springSecurityService

    @Secured(['ROLE_NEGOCIO', 'ROLE_NEGOCIO_PLUS'])
    def cargarAgregarVenta() {
        render(template: 'agregarVenta')
    }

    @Secured(['ROLE_NEGOCIO', 'ROLE_NEGOCIO_PLUS'])
    def guardarTransaccion() {
        Transaccion transaccion = new Transaccion(tipoTransaccion: TipoTransaccion.get(params.tipoTransaccion), montoOperacion: params.monto, cliente: User.get(params.clienteId), negocio: springSecurityService.getCurrentUser())
        transaccion.montoCashBack = new BigDecimal(new BigDecimal(10).multiply(transaccion.montoOperacion)).divide(100);
        transaccion.save flush: true
        render "Transaccion Completada."
    }
}
