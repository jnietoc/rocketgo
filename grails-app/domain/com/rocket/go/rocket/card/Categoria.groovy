package com.rocket.go.rocket.card

class Categoria {
    String nombre


    static constraints = {
        nombre blank: false
    }
    @Override
    String toString() {
        return nombre
    }
}
