package com.rocket.go.rocket.card

import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MarcaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Marca.list(params), model:[marcaCount: Marca.count()]
    }
    @Secured(['ROLE_ADMIN', 'ROLE_PROVEEDOR'])
    def show(Marca marcaInstance) {
        def imagesDir = grailsAttributes.getApplicationContext().getResource(marcaInstance.urlImagenes).getFile().toString()

        def imagenes = []
        new File(imagesDir).eachFile { file ->
            imagenes << file.getName()
        }

        marcaInstance.imagenes = imagenes
        respond marcaInstance
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Marca(params)
    }

    @Transactional
    @Secured(['ROLE_ADMIN'])
    def save(Marca marca) {
        if (marca == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (marca.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond marca.errors, view:'create'
            return
        }

        marca.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'marca.label', default: 'Marca'), marca.id])
                redirect marca
            }
            '*' { respond marca, [status: CREATED] }
        }
    }

    @Transactional
    @Secured(['ROLE_ADMIN'])
    def edit(Marca marca) {
        respond marca
    }
    @Transactional
    @Secured(['ROLE_ADMIN'])
    def update(Marca marca) {
        if (marca == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (marca.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond marca.errors, view:'edit'
            return
        }

        marca.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'marca.label', default: 'Marca'), marca.id])
                redirect marca
            }
            '*'{ respond marca, [status: OK] }
        }
    }

    @Transactional
    @Secured(['ROLE_ADMIN'])
    def delete(Marca marca) {

        if (marca == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        marca.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'marca.label', default: 'Marca'), marca.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'marca.label', default: 'Marca'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
