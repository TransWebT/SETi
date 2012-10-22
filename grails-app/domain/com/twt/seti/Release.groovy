package com.twt.seti

class Release {
    String name
    String description
    Integer displayOrder
    User modifiedBy
    Date dateCreated
    Date lastUpdated

    static constraints = {
        name(unique:true, blank:false)
        description(unique: false, blank: true, maxSize: 1000)
        displayOrder(nullable: true)
        modifiedBy()
        dateCreated()
        lastUpdated()
    }

    String toString() {
        return name
    }
}
