package com.twt.seti

import com.twt.seti.Service
import com.twt.seti.ServerType

class Server {
    String name
    String ipAddress
    String description
    Integer displayOrder
    User modifiedBy
    Date dateCreated
    Date lastUpdated

    static hasMany = [services: Service]
    static belongsTo = [serverType: ServerType]

    static constraints = {
        name(unique:true, blank:false)
        ipAddress(blank:false)
        description(unique: false, blank: true, maxSize: 1000)
        serverType(nullalb: true)
        displayOrder(nullable:true)
        lastUpdated()
        modifiedBy()
        dateCreated()
    }

    String toString() {
        return name
    }
}
