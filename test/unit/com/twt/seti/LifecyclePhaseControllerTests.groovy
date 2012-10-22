package com.twt.seti



import org.junit.*
import grails.test.mixin.*

@TestFor(LifecyclePhaseController)
@Mock(LifecyclePhase)
class LifecyclePhaseControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/lifecyclePhase/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.lifecyclePhaseInstanceList.size() == 0
        assert model.lifecyclePhaseInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.lifecyclePhaseInstance != null
    }

    void testSave() {
        controller.save()

        assert model.lifecyclePhaseInstance != null
        assert view == '/lifecyclePhase/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/lifecyclePhase/show/1'
        assert controller.flash.message != null
        assert LifecyclePhase.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/lifecyclePhase/list'

        populateValidParams(params)
        def lifecyclePhase = new LifecyclePhase(params)

        assert lifecyclePhase.save() != null

        params.id = lifecyclePhase.id

        def model = controller.show()

        assert model.lifecyclePhaseInstance == lifecyclePhase
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/lifecyclePhase/list'

        populateValidParams(params)
        def lifecyclePhase = new LifecyclePhase(params)

        assert lifecyclePhase.save() != null

        params.id = lifecyclePhase.id

        def model = controller.edit()

        assert model.lifecyclePhaseInstance == lifecyclePhase
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/lifecyclePhase/list'

        response.reset()

        populateValidParams(params)
        def lifecyclePhase = new LifecyclePhase(params)

        assert lifecyclePhase.save() != null

        // test invalid parameters in update
        params.id = lifecyclePhase.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/lifecyclePhase/edit"
        assert model.lifecyclePhaseInstance != null

        lifecyclePhase.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/lifecyclePhase/show/$lifecyclePhase.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        lifecyclePhase.clearErrors()

        populateValidParams(params)
        params.id = lifecyclePhase.id
        params.version = -1
        controller.update()

        assert view == "/lifecyclePhase/edit"
        assert model.lifecyclePhaseInstance != null
        assert model.lifecyclePhaseInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/lifecyclePhase/list'

        response.reset()

        populateValidParams(params)
        def lifecyclePhase = new LifecyclePhase(params)

        assert lifecyclePhase.save() != null
        assert LifecyclePhase.count() == 1

        params.id = lifecyclePhase.id

        controller.delete()

        assert LifecyclePhase.count() == 0
        assert LifecyclePhase.get(lifecyclePhase.id) == null
        assert response.redirectedUrl == '/lifecyclePhase/list'
    }
}
