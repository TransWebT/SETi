package com.twt.seti

class Service {
    String instanceName
    ServiceType serviceType
    String port
    String notes
    Integer displayOrder
    User modifiedBy
    Date dateCreated
    Date lastUpdated

    static constraints = {
        instanceName(unique:true, blank:false)
        serviceType(nullable:false)
        port(nullable:false)
        notes(unique: false, blank: true, maxSize: 2000)
        displayOrder(nullable:true)
        lastUpdated()
        modifiedBy()
        dateCreated()
    }

    String toString() {
        return instanceName
    }
}
