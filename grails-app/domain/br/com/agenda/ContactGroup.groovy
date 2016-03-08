package br.com.agenda

class ContactGroup {

    static hasMany = [contact:Contact]
    String name
    User user


    static constraints = {
    }
}
