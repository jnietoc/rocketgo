package com.rocket.go.seguridad

import com.rocket.go.rocket.card.Tarjeta

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class  UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def springSecurityService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userCount: User.count()]
    }

    def show(User user) {
        respond user
    }

    def create() {
        respond new User(params)
    }
    @Secured(['ROLE_ADMIN'])
    def createNegocio() {
        render view: 'createNegocio', model: [user: new User(params)]
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def createCliente() {
        render view: 'createCliente', model: [user: new User(params)]
    }

    @Transactional
    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def save() {
        User user = new User(params)
        if (user == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (user.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond user.errors, view:'create'
            return
        }

        if('Cliente'.equals(user?.tipo)) {
            def tarjeta = new Tarjeta()
            if(params.noTarjeta) {
                tarjeta.noTarjeta = params.noTarjeta
                tarjeta.negocio = springSecurityService.getCurrentUserId()
            } else {
                tarjeta.noTarjeta = 'CardTest'
            }

            tarjeta.save()

            user.tarjeta = tarjeta
        }

        user.save flush:true

        switch (user?.tipo) {
            case 'Cliente':
                Role roleCliente = Role.findByAuthority('ROLE_CLIENTE')
                UserRole.create(user, roleCliente)
                break
            case 'Negocio':
                Role roleNegocio = Role.findByAuthority('ROLE_NEGOCIO')
                UserRole.create(user, roleNegocio)
                break
            case 'Negocio Plus':
                Role roleNegocioPlus = Role.findByAuthority('ROLE_NEGOCIO_PLUS')
                UserRole.create(user, roleNegocioPlus)
                break
            default:
                break
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*' { respond user, [status: CREATED] }
        }
    }

    def edit(User user) {
        respond user
    }

    @Transactional
    def update(User user) {
        if (user == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (user.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond user.errors, view:'edit'
            return
        }

        user.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }

    @Transactional
    def delete(User user) {

        if (user == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        user.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    @Secured(['ROLE_NEGOCIO', 'ROLE_NEGOCIO_PLUS'])
    def buscarClientePorTarjeta() {
        def tarjeta = Tarjeta.findByNoTarjeta(params.noTarjeta)

        def cliente = null
        if (tarjeta)
            cliente = User.findByTarjeta(tarjeta)

        render(template: 'clienteOK', model: [cliente: cliente])
    }
}
