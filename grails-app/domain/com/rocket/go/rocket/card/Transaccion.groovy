package com.rocket.go.rocket.card

import com.rocket.go.seguridad.User

class Transaccion {

    TipoTransaccion tipoTransaccion
    BigDecimal montoOperacion
    BigDecimal montoCashBack
    User cliente
    User negocio

    static constraints = {
        tipoTransaccion nullable: false
        montoOperacion minSize: 1
        montoCashBack nullable: true
        cliente nullable: false
        negocio nullable: false
    }
}

