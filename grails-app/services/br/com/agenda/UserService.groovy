package br.com.agenda

import grails.transaction.Transactional
import org.apache.catalina.users.AbstractUser

@Transactional
class UserService {
    def mailService

    def save(params) {

        def user = new User(params)
            user.confirmationToken = UUID.randomUUID().toString()
            user.save(failOnError: true,flush: true)
        def userRole = new UserRole(user,Role.findAllByAuthority('ROLE_USER'))
            userRole.save(failOnError: true,flush: true)

        return user
    }

    def confirmAccount(String token){
        def user = User.findAllByConfirmationToken(token)

        if (user[0] != null){
            user[0].confirmationToken = ""
            user[0].save(failOnError: true,flush: true)

            return true
        }else{
            return false
        }

    }


}
