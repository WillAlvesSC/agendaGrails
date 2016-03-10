package br.com.agenda

class GroupController {
    def springSecurityService
    def groupService

    def index() {
        def listOfGroups = ContactGroup.findAllByUser(springSecurityService.currentUser)
        def groupsList = groupService.returnGroupList(listOfGroups)

        model:[groupList:groupsList]

    }

    def create(){}

    def edit(Long id){
        model :[group:ContactGroup.get(id)]
    }

    def saveGroup(){
        def group = groupService.saveGroup(params)

        if(group.validate()){
            redirect(view:'/success')
        }else{
            redirect(view:'/fail')
        }
    }

    def updateGroup(){
        def group  = groupService.update(params)

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
