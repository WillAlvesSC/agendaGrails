package br.com.agenda

import grails.transaction.Transactional

import java.security.acl.Group

@Transactional
class GroupService {
    def springSecurityService
    def saveGroup(params) {
        log.debug(params)
        def group = new ContactGroup(params)
            group.contact = Contact.get(params.contact)
            group.user = springSecurityService.currentUser
            group.save(failOnError: true,flush: true)

        return group
    }

    def delete(params){
        def response = ContactGroup.get(params.id).delete(flush: true)

        return response
    }

    def returnGroupList(List groupList){

        def groupMap = []
        groupList.each {
            groupMap += ['group':it,'size':Contact.findAllByGroup(it).size()]
        }

        return groupMap
    }

}
