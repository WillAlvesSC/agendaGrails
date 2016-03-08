package br.com.agenda

class ContactController {

    def index() {

        model :[contact:Contact.findAll()]
    }

    def create(){}

    def edit (Long id){}

}
