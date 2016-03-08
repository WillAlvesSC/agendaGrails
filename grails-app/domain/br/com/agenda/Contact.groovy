package br.com.agenda

class Contact {

    static belongsTo = ContactGroup

    String name
    String telephone
    String email


    static constraints = {

    }
}
