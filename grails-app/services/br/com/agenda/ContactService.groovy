package br.com.agenda

import grails.transaction.Transactional

@Transactional
class ContactService {

    def save(params) {

        def contact = new Contact(params)
            contact.save(failOnError: true,flush: true)
    }

    def update(params){

        def contact = new Contact()

    }

    def delete(params){

        def contact  = Contact.get(params.id)
        def response = contact.delete(flush: 'true')

        return response
    }
}
