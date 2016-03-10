package br.com.agenda

class ContactController {
    def contactService
    def springSecurityService

    def index() {
        model :[contactList:Contact.findAllByUser(springSecurityService.currentUser)]
    }

    def create(){
        log.debug(springSecurityService.currentUserId)
        model:[groups:ContactGroup.findAllByUser(springSecurityService.currentUser)]
    }

    def edit (Long id){
        model: [contact: Contact.get(id),groups:ContactGroup.findAllByUser(springSecurityService.currentUser)]
    }

    def saveContact(){
        def contact = contactService.saveContact(params)

        if(contact.validate()) {
            redirect(action: 'index')
        }
    }

    def updateContact(){
        def contact = contactService.updateContact(params)

        if(contact.validate()){
            redirect(action: 'index')
        }
    }

    def deleteContact(){

        def response = contactService.delete(params)
    }

}
