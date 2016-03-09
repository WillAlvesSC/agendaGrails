import br.com.agenda.Role
import br.com.agenda.User
import br.com.agenda.UserRole

class BootStrap {

    def init = { servletContext ->

       def user = User.get(1) ?: new User(username:'admin',password:'admin').save(flush: true)
       def userRole = Role.get(1) ?: new Role(authority: 'ROLE_USER').save(flush: true)
       def adminRole = Role.get(2) ?: new Role(authority:'ROLE_ADMIN').save(flush: true)
       def uRole =  new UserRole(user,adminRole).save(flush: true)

    }
    def destroy = {
    }
}
