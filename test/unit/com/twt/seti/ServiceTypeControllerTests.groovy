package com.twt.seti



import org.junit.*
import grails.test.mixin.*

@TestFor(ServiceTypeController)
@Mock(ServiceType)
class ServiceTypeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/serviceType/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.serviceTypeInstanceList.size() == 0
        assert model.serviceTypeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.serviceTypeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.serviceTypeInstance != null
        assert view == '/serviceType/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/serviceType/show/1'
        assert controller.flash.message != null
        assert ServiceType.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceType/list'

        populateValidParams(params)
        def serviceType = new ServiceType(params)

        assert serviceType.save() != null

        params.id = serviceType.id

        def model = controller.show()

        assert model.serviceTypeInstance == serviceType
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceType/list'

        populateValidParams(params)
        def serviceType = new ServiceType(params)

        assert serviceType.save() != null

        params.id = serviceType.id

        def model = controller.edit()

        assert model.serviceTypeInstance == serviceType
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceType/list'

        response.reset()

        populateValidParams(params)
        def serviceType = new ServiceType(params)

        assert serviceType.save() != null

        // test invalid parameters in update
        params.id = serviceType.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/serviceType/edit"
        assert model.serviceTypeInstance != null

        serviceType.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/serviceType/show/$serviceType.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        serviceType.clearErrors()

        populateValidParams(params)
        params.id = serviceType.id
        params.version = -1
        controller.update()

        assert view == "/serviceType/edit"
        assert model.serviceTypeInstance != null
        assert model.serviceTypeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/serviceType/list'

        response.reset()

        populateValidParams(params)
        def serviceType = new ServiceType(params)

        assert serviceType.save() != null
        assert ServiceType.count() == 1

        params.id = serviceType.id

        controller.delete()

        assert ServiceType.count() == 0
        assert ServiceType.get(serviceType.id) == null
        assert response.redirectedUrl == '/serviceType/list'
    }
}
