package com.twt.seti

class Application {
    String name
    String description
    Byte[] screenshot
    User owner
    Integer displayOrder
    User modifiedBy
    Date dateCreated
    Date lastUpdated

    static constraints = {
        name(unique:true, blank:false)
        description(unique: false, blank: true, maxSize: 2000)
        screenshot(nullable: true, maxSize: 10000000)
        owner(nullable: true)
        displayOrder(nullable:true)
        lastUpdated()
        modifiedBy()
    }

    String toString() {
        return name
    }
}
