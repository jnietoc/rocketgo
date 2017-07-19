package com.rocket.go.seguridad

import com.rocket.go.rocket.card.Tarjeta
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

	private static final long serialVersionUID = 1

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	String nombre
	String apellidoPaterno
	String apellidoMaterno
	String rfc
	String calle
	String colonia
	String codigoPostal
	String ciudad
	String email
	String celular
	String tipo
	Tarjeta tarjeta

	Set<Role> getAuthorities() {
		(UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
	}

	static constraints = {

		password blank: false, password: true
		username blank: false, unique: true

		nombre blank: false, maxSize: 30
		apellidoPaterno blank: false, maxSize: 20
		apellidoMaterno blank: false, maxSize: 20
		rfc maxSize: 13, nullable:true, blank: true
		calle blank: false, maxSize: 20
		colonia blank:false, maxSize: 15
		codigoPostal blank: false, maxSize: 5
		ciudad blank: false, maxSize: 20
		email blank: false, unique:true, email: true
		celular blank: false, maxSize: 10
		tarjeta nullable: true
	}

	static mapping = {
		password column: '`password`'
	}
}
