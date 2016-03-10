package br.com.agenda

class UserController {
    def userService
    def mailService

    def signup() { }

    def index(){
        model:[userList:User.findAll()]
    }

    def saveUser(){

        def user = userService.save(params)

        if(user.validate()){
           sendMailConfirmation(user)
            redirect(view:"/success")
        }else{
            redirect(view:"/fail")
        }

    }

    def validate(String id){
        def user = userService.confirmAccount(id)
        log.debug(user)


    }



    def sendMailConfirmation(User user){

        mailService.sendMail {
            to user.username
            subject "Confirmação de Cadastro"
            html g.render(template: "mailTemplate", model: [code: user.confirmationToken])

        }

    }
}
