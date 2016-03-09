package br.com.agenda

import grails.transaction.Transactional

@Transactional
class ContactService {

    def index(){
        model:[contactList:Contact.findAllByGroup()]
    }

    def saveContact(params) {
log.debug(params)
        def contact = new Contact(params)
            contact.group = ContactGroup.get(params.grupoID)
            contact.save(failOnError: true,flush: true)
    }


    def delete(params){

        def contact  = Contact.get(params.id)
        def response = contact.delete(flush: 'true')

        return response
    }
}
