package com.twt.seti

class Reservation {
    String reservationTag
    User requester
    String comments
    Application application
    Release release
    LifecyclePhase lifecyclePhase
    Server server
    Service service
    Date startDatetime
    Date endDatetime
    Integer displayOrder
    User modifiedBy
    Date dateCreated
    Date lastUpdated

    static constraints = {
        reservationTag(unique:true, blank:false)
        requester(nullable: false)
        comments(nullable:true, maxSize:2000)
        application(nullable: false)
        release(nullable: true)
        lifecyclePhase(nullable: true)
        server(nullable: false)
        service(nullable: false)
        startDatetime(nullable: false)
        endDatetime(nullable: false)
        displayOrder(nullable:true)
        lastUpdated()
        modifiedBy()
        dateCreated()
    }

    String toString() {
        return reservationTag
    }
}
