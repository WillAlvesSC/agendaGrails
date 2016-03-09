package br.com.agenda

class Contact {

    static belongsTo = [user:User]

    ContactGroup group
    String name
    String telephone
    String email


    static constraints = {
        email nullable: true

    }
}
