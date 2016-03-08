package br.com.agenda

class ContactController {
    def contactService

    def index() {
        model :[contact:Contact.findAll()]
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
