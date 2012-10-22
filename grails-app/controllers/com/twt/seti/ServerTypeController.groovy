package com.twt.seti

import org.springframework.dao.DataIntegrityViolationException

class ServerTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [serverTypeInstanceList: ServerType.list(params), serverTypeInstanceTotal: ServerType.count()]
    }

    def create() {
        [serverTypeInstance: new ServerType(params)]
    }

    def save() {
        def serverTypeInstance = new ServerType(params)
        if (!serverTypeInstance.save(flush: true)) {
            render(view: "create", model: [serverTypeInstance: serverTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'serverType.label', default: 'ServerType'), serverTypeInstance.id])
        redirect(action: "show", id: serverTypeInstance.id)
    }

    def show(Long id) {
        def serverTypeInstance = ServerType.get(id)
        if (!serverTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serverType.label', default: 'ServerType'), id])
            redirect(action: "list")
            return
        }

        [serverTypeInstance: serverTypeInstance]
    }

    def edit(Long id) {
        def serverTypeInstance = ServerType.get(id)
        if (!serverTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serverType.label', default: 'ServerType'), id])
            redirect(action: "list")
            return
        }

        [serverTypeInstance: serverTypeInstance]
    }

    def update(Long id, Long version) {
        def serverTypeInstance = ServerType.get(id)
        if (!serverTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serverType.label', default: 'ServerType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (serverTypeInstance.version > version) {
                serverTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'serverType.label', default: 'ServerType')] as Object[],
                          "Another user has updated this ServerType while you were editing")
                render(view: "edit", model: [serverTypeInstance: serverTypeInstance])
                return
            }
        }

        serverTypeInstance.properties = params

        if (!serverTypeInstance.save(flush: true)) {
            render(view: "edit", model: [serverTypeInstance: serverTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'serverType.label', default: 'ServerType'), serverTypeInstance.id])
        redirect(action: "show", id: serverTypeInstance.id)
    }

    def delete(Long id) {
        def serverTypeInstance = ServerType.get(id)
        if (!serverTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serverType.label', default: 'ServerType'), id])
            redirect(action: "list")
            return
        }

        try {
            serverTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'serverType.label', default: 'ServerType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'serverType.label', default: 'ServerType'), id])
            redirect(action: "show", id: id)
        }
    }
}
