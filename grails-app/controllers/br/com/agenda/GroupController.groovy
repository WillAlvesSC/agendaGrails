package br.com.agenda

class GroupController {
    def springSecurityService
    def groupService

    def index() {
        def listOfGroups = ContactGroup.findAllByUser(springSecurityService.currentUserId)
        def groupsList = groupService.returnGroupList(listOfGroups)

    }
}
