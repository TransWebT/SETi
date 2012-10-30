import com.twt.seti.User

class BootStrap {

    def init = { servletContext ->
        if (!User.find{username == "admin"}) {
            new User(username: "admin", firstName: "admin", lastName: "admin", password: "admin",
                    email: "admin@admin.org", enabled: true).save(failOnError: true)
        }
    }
    def destroy = {
    }
}
