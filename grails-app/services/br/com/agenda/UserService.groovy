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

        return user
    }


}
