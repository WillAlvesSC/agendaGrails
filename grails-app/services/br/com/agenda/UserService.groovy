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

            sendMailConfirmation(user)

        return user
    }

    def sendMailConfirmation(User user){
        mailService.sendMail {
            to user.username
            subject "Confirmação de Cadastro"
            html g.render(template: "mailTemplate", model: [code: user.confirmationToken])

        }

    }
}
