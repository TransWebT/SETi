package com.twt.seti

import org.springframework.dao.DataIntegrityViolationException

class ServiceTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [serviceTypeInstanceList: ServiceType.list(params), serviceTypeInstanceTotal: ServiceType.count()]
    }

    def create() {
        [serviceTypeInstance: new ServiceType(params)]
    }

    def save() {
        def serviceTypeInstance = new ServiceType(params)
        if (!serviceTypeInstance.save(flush: true)) {
            render(view: "create", model: [serviceTypeInstance: serviceTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), serviceTypeInstance.id])
        redirect(action: "show", id: serviceTypeInstance.id)
    }

    def show(Long id) {
        def serviceTypeInstance = ServiceType.get(id)
        if (!serviceTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), id])
            redirect(action: "list")
            return
        }

        [serviceTypeInstance: serviceTypeInstance]
    }

    def edit(Long id) {
        def serviceTypeInstance = ServiceType.get(id)
        if (!serviceTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), id])
            redirect(action: "list")
            return
        }

        [serviceTypeInstance: serviceTypeInstance]
    }

    def update(Long id, Long version) {
        def serviceTypeInstance = ServiceType.get(id)
        if (!serviceTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (serviceTypeInstance.version > version) {
                serviceTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'serviceType.label', default: 'ServiceType')] as Object[],
                          "Another user has updated this ServiceType while you were editing")
                render(view: "edit", model: [serviceTypeInstance: serviceTypeInstance])
                return
            }
        }

        serviceTypeInstance.properties = params

        if (!serviceTypeInstance.save(flush: true)) {
            render(view: "edit", model: [serviceTypeInstance: serviceTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), serviceTypeInstance.id])
        redirect(action: "show", id: serviceTypeInstance.id)
    }

    def delete(Long id) {
        def serviceTypeInstance = ServiceType.get(id)
        if (!serviceTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), id])
            redirect(action: "list")
            return
        }

        try {
            serviceTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'serviceType.label', default: 'ServiceType'), id])
            redirect(action: "show", id: id)
        }
    }
}
