package br.com.agenda

class GroupController {
    def springSecurityService
    def groupService

    def index() {
        def listOfGroups = ContactGroup.findAllByUser(springSecurityService.currentUserId)
        def groupsList = groupService.returnGroupList(listOfGroups)

        model:[groupList:groupsList]

    }

    def create(){}

    def edit(Long id){
        model :[group:ContactGroup.get(id)]
    }

    def saveGroup(){
        def group = groupService.save(params)

        if(group.validate()){
            redirect(view:'/success')
        }else{
            redirect(view:'/fail')
        }
    }

    def deleteGroup(){
        def response = groupService.delete(params)

        return response
    }
}
