package br.com.agenda

class Contact {

    static belongsTo = [group:ContactGroup]

    String name
    String telephone
    String email


    static constraints = {

    }
}
