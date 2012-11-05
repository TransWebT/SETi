package com.twt.seti

import com.twt.seti.SecUser

class User extends SecUser {
    String lastName
    String firstName
    String middleName
    String email
    User modifiedBy
    Date dateCreated
    Date lastUpdated

    static constraints = {
        lastName(blank:false)
        firstName(blank:false)
        middleName(nullable:true)
        email(nullable:true, email:true)
        modifiedBy(nullable: true) // have to allow for bootstrapping first user
        dateCreated()
        lastUpdated()
    }

    String toString() {
        return "${lastName}, ${firstName}"
    }
}
