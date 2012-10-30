package com.twt.seti

import org.springframework.dao.DataIntegrityViolationException

class LifecyclePhaseController {

    static navigation = true

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [lifecyclePhaseInstanceList: LifecyclePhase.list(params), lifecyclePhaseInstanceTotal: LifecyclePhase.count()]
    }

    def create() {
        [lifecyclePhaseInstance: new LifecyclePhase(params)]
    }

    def save() {
        def lifecyclePhaseInstance = new LifecyclePhase(params)
        if (!lifecyclePhaseInstance.save(flush: true)) {
            render(view: "create", model: [lifecyclePhaseInstance: lifecyclePhaseInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase'), lifecyclePhaseInstance.id])
        redirect(action: "show", id: lifecyclePhaseInstance.id)
    }

    def show(Long id) {
        def lifecyclePhaseInstance = LifecyclePhase.get(id)
        if (!lifecyclePhaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase'), id])
            redirect(action: "list")
            return
        }

        [lifecyclePhaseInstance: lifecyclePhaseInstance]
    }

    def edit(Long id) {
        def lifecyclePhaseInstance = LifecyclePhase.get(id)
        if (!lifecyclePhaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase'), id])
            redirect(action: "list")
            return
        }

        [lifecyclePhaseInstance: lifecyclePhaseInstance]
    }

    def update(Long id, Long version) {
        def lifecyclePhaseInstance = LifecyclePhase.get(id)
        if (!lifecyclePhaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (lifecyclePhaseInstance.version > version) {
                lifecyclePhaseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase')] as Object[],
                          "Another user has updated this LifecyclePhase while you were editing")
                render(view: "edit", model: [lifecyclePhaseInstance: lifecyclePhaseInstance])
                return
            }
        }

        lifecyclePhaseInstance.properties = params

        if (!lifecyclePhaseInstance.save(flush: true)) {
            render(view: "edit", model: [lifecyclePhaseInstance: lifecyclePhaseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase'), lifecyclePhaseInstance.id])
        redirect(action: "show", id: lifecyclePhaseInstance.id)
    }

    def delete(Long id) {
        def lifecyclePhaseInstance = LifecyclePhase.get(id)
        if (!lifecyclePhaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase'), id])
            redirect(action: "list")
            return
        }

        try {
            lifecyclePhaseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lifecyclePhase.label', default: 'LifecyclePhase'), id])
            redirect(action: "show", id: id)
        }
    }
}
