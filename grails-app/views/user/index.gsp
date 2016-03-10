<meta name="layout" content="/principal/main"/>

<title>Lista Contatos</title>
<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="fa fa-user"></i><span class="break"></span>Usuarios</h2>
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
                    <th width="80%">Username</th>
                    <th>Actions</th>

                </tr>
                </thead>
                <tbody>

                <g:each in="${userList}">
                    <tr>
                        <td class="center">${it.username}</td>
                        <td class="center">
                            <a class="btn btn-danger delete" href="#"  id="${it.id}">
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
</script>