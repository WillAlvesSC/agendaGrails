package br.com.agenda

import grails.transaction.Transactional

@Transactional
class ContactService {
    def springSecurityService

    def index(){
        model:[contactList:Contact.findAllByGroup()]
    }

    def saveContact(params) {
        log.debug(params)
        def contact = new Contact(params)
            contact.group = ContactGroup.get(params.groupID)
            contact.user = springSecurityService.currentUser
            contact.save(failOnError: true,flush: true)
    }

    def updateContact(params){
        def contact = Contact.get(params.contactID.toLong())

            contact.group = ContactGroup.get(params.groupID)
            contact.name = params.name
            contact.telephone = params.telephone
            contact.email = params.email
            contact.save(flush: true,failOnError: true)

        return  contact
    }


    def delete(params){

        def contact  = Contact.get(params.id)
        def response = contact.delete(flush: 'true')

        return response
    }
}
