package com.rocket.go.rocket.card

import com.rocket.go.seguridad.User

class Tarjeta {

    String noTarjeta
    Date fechaCreacion = new Date()
    Date fechaExpiracion
    boolean enabled = true
    Integer negocio

    static constraints = {
        noTarjeta blank: false, nullable: false
        fechaExpiracion nullable: true
        negocio nullable: true
    }

    static mapping = {
        sort: 'id' order: 'desc'
    }

    def beforeInsert() {
        def tarjetas = Tarjeta.findAllByNegocioIsNull(sort: 'id', order: 'desc')
        if ("CardTest".equals(this.noTarjeta)) {
            if(tarjetas.isEmpty())
                this.noTarjeta = obtenerNoTarjeta(1);
            else
                this.noTarjeta = obtenerNoTarjeta(tarjetas?.size() + 1)
        }
    }

    def obtenerNoTarjeta(siguienteNoTarjeta) {
        def noTarjeta = ''
        def times  = 16 - String.valueOf(siguienteNoTarjeta).length()
        times.times {
            noTarjeta += '0'
        }

        noTarjeta += siguienteNoTarjeta

        return noTarjeta
    }
}
