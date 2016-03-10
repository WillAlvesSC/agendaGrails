package br.com.agenda

import grails.plugin.springsecurity.annotation.Secured

class UserController {
    def userService
    def mailService

    def signup() { }

    @Secured(['ROLE_ADMIN'])
    def index(){

        model:[userList:User.findAll()]

    }

    def saveUser(){

        log.debug(params)
        def user = userService.save(params)

        if(user.id){
           sendMailConfirmation(user)
            redirect(action: 'status')
        }

    }

    def status(){

        if (params.message){
            model :[message: params.message]
        }
    }

    def validate(String id){

        def user = userService.confirmAccount(id)

        if(user){
            redirect(action: 'status', params: [message:'Sua conta foi ativada com Sucesso. parabens'])
        }else{
            redirect(action: 'status', [message:'Erro ao Ativar sua conta , verifique a url e tente novamente.'])
        }

    }

    def sendMailConfirmation(User user){

        mailService.sendMail {
            to user.username
            subject "Confirmação de Cadastro"
            html g.render(template: "mailTemplate", model: [code: user.confirmationToken])

        }

    }
}
