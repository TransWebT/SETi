package com.twt.seti



import org.junit.*
import grails.test.mixin.*

@TestFor(ServerTypeController)
@Mock(ServerType)
class ServerTypeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/serverType/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.serverTypeInstanceList.size() == 0
        assert model.serverTypeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.serverTypeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.serverTypeInstance != null
        assert view == '/serverType/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/serverType/show/1'
        assert controller.flash.message != null
        assert ServerType.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/serverType/list'

        populateValidParams(params)
        def serverType = new ServerType(params)

        assert serverType.save() != null

        params.id = serverType.id

        def model = controller.show()

        assert model.serverTypeInstance == serverType
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/serverType/list'

        populateValidParams(params)
        def serverType = new ServerType(params)

        assert serverType.save() != null

        params.id = serverType.id

        def model = controller.edit()

        assert model.serverTypeInstance == serverType
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/serverType/list'

        response.reset()

        populateValidParams(params)
        def serverType = new ServerType(params)

        assert serverType.save() != null

        // test invalid parameters in update
        params.id = serverType.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/serverType/edit"
        assert model.serverTypeInstance != null

        serverType.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/serverType/show/$serverType.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        serverType.clearErrors()

        populateValidParams(params)
        params.id = serverType.id
        params.version = -1
        controller.update()

        assert view == "/serverType/edit"
        assert model.serverTypeInstance != null
        assert model.serverTypeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/serverType/list'

        response.reset()

        populateValidParams(params)
        def serverType = new ServerType(params)

        assert serverType.save() != null
        assert ServerType.count() == 1

        params.id = serverType.id

        controller.delete()

        assert ServerType.count() == 0
        assert ServerType.get(serverType.id) == null
        assert response.redirectedUrl == '/serverType/list'
    }
}
