<meta name="layout" content="/principal/main"/>

<title>Lista Contatos</title>
<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="fa fa-phone"></i><span class="break"></span>Contatos</h2>
            <div class="box-icon">
                <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                <tr>
                    <th width="40%">Nome</th>
                    <th>Email</th>
                    <th  width="10%">Telefone</th>
                    <th>Grupo</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${contactList}">
                        <tr>
                            <td>${it.name}</td>
                            <td class="center">${it.email}</td>
                            <td class="center">${it.telephone}</td>
                            <td class="center">${it.group.name}</td>
                            <td class="center">
                                <a class="btn btn-primary edit" href="${createLink(controller: 'contact',action: 'edit' ,params:[id:it.id])}">
                                    <i class="fa fa-pencil-square-o"></i>
                                </a>
                                <a class="btn btn-danger delete" href=""  id="${it.id}">
                                    <i class="fa fa-trash"></i>
                                </a>
                            </td>
                        </tr>

                </g:each>

                </tbody>
            </table>
        </div>
    </div><!--/span-->

</div><!--/row-->
<script>
    var url = "${createLink(controller: 'contact',action: 'deleteContact')}";
    $('.delete').on('click',function(){
        $(this).parents('tr').first().remove();
        var id = $(this).attr('id');
        console.log(id);
        $.ajax({
            url: url,
            data:{'id': id},
            type: 'POST',
            success: function () {
                $(this).parents('tr').first().remove();
            }
        });
    });

    var urlEdit = "${createLink(controller: 'contact',action: 'updateContact')}";
    $('.edit').on('click',function(){
        $(this).parents('tr').first().remove();
        var id = $(this).attr('id');
        console.log(id);
        $.ajax({
            url: url,
            data:{'id': id},
            type: 'POST',
            success: function () {
                $(this).parents('tr').first().remove();
            }
        });
    });
</script>