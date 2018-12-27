package agenda_academica

import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProvaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Prova.list(params), model:[provaInstanceCount: Prova.count()]
    }

    def show(Prova provaInstance) {
        respond provaInstance
    }

    def create() {
        respond new Prova(params)
    }

    @Transactional
    def save(Prova provaInstance) {
        if (provaInstance == null) {
            notFound()
            return
        }

        if (provaInstance.hasErrors()) {
            respond provaInstance.errors, view:'create'
            return
        }

        provaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prova.label', default: 'Prova'), provaInstance.id])
                redirect provaInstance
            }
            '*' { respond provaInstance, [status: CREATED] }
        }
    }

    def edit(Prova provaInstance) {
        respond provaInstance
    }

    @Transactional
    def update(Prova provaInstance) {
        if (provaInstance == null) {
            notFound()
            return
        }

        if (provaInstance.hasErrors()) {
            respond provaInstance.errors, view:'edit'
            return
        }

        provaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Prova.label', default: 'Prova'), provaInstance.id])
                redirect provaInstance
            }
            '*'{ respond provaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Prova provaInstance) {

        if (provaInstance == null) {
            notFound()
            return
        }

        provaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Prova.label', default: 'Prova'), provaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prova.label', default: 'Prova'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
