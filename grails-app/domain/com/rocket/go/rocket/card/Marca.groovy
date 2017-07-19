package com.rocket.go.rocket.card

class Marca {
    String nombre
    String direccion
    String telefono
    Boolean negocioplus
    String facebook
    String twitter
    String pinterest
    String email
    String horarioAtencion
    Categoria categoria
    Integer porcentajeCashBack
    Integer puntuacion
    String urlImagenes
    List<String> imagenes


    static constraints = {
        nombre blank: false, nullable:false
        direccion blank: false
        negocioplus nullable: false
        facebook blank:true
        twitter blank: true
        pinterest blank: true
        email blank: true
        horarioAtencion blank:false
        porcentajeCashBack blank:false
        puntuacion blank:false
        urlImagenes blank: false
        categoria blank: false, nullable:false
    }

    static mapping = {
        sort: 'id' order: 'desc'
    }

    static transients = ['imagenes']

}
