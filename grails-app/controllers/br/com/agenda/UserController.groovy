package br.com.agenda

class UserController {
    def userService

    def signup() { }

    def saveUser(){

        def user = userService.save(params)

        if(user.validate()){
            redirect(view:"/sucess")
        }else{
            redirect(view:"/fail")
        }

    }

    def index(){
        model:[userList:User.findAll()]
    }


}
