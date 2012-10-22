package com.twt.seti

class LifecyclePhase {
    String name
    Integer displayOrder
    User modifiedBy
    Date dateCreated
    Date lastUpdated

    static constraints = {
        name(unique:true, blank:false)
        displayOrder(nullable:true)
        lastUpdated()
        modifiedBy()
        dateCreated()
    }

    String toString() {
        return name
    }
}
