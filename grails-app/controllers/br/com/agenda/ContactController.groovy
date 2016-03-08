package br.com.agenda

class ContactController {
    def contactService
    def springSecurityService

    def index() {
        model :[contact:Contact.findAllByUser(springSecurityService.currentUserId)]
    }

    def create(){}

    def edit (Long id){
        model: [contact: Contact.get(id)]
    }

    def saveContact(){
        def contact = contactService.save(params)

        if(contact.validate()){
            redirect(view:'/sucess')
        }else{
            redirect(view:'/fail')
        }
    }

    def deleteContact(){

        def response = contactService.delete(params)
    }

}
