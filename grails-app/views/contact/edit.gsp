<meta name="layout" content="/principal/main"/>

<title>Lista Grupos</title>
<div class="row-fluid sortable ui-sortable">
    <div class="box span12">
        <div data-original-title="" class="box-header">
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>Adicionar Novo Contato</h2>
            <div class="box-icon">
                <a class="btn-setting" href="#"><i class="halflings-icon white wrench"></i></a>
                <a class="btn-minimize" href="#"><i class="halflings-icon white chevron-up"></i></a>
                <a class="btn-close" href="#"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <g:form controller="contact" action="create" class="form-horizontal">
                <fieldset>
                    <div class="control-group">
                        <label for="name" class="control-label">Nome</label>
                        <div class="controls">
                            <input type="text" value="${contact.name}" placeholder="Digite o nome do Grupo" id="name" name="name" class="input-xlarge focused" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="name" class="control-label">Telefone</label>
                        <div class="controls">
                            <input type="text" value="${contact.telephone}"  placeholder="Digite o telefone" id="telephone" name="name" class="input-xlarge focused" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="name" class="control-label">Email</label>
                        <div class="controls">
                            <input type="text" value="${contact.email}"  placeholder="Digite o Email" id="email" name="name" class="input-xlarge focused" >
                        </div>
                    </div>
                    <input type="hidden" name="id" value="value="${contact.id}" ">
                    <div class="form-actions">
                        <button class="btn btn-primary" type="submit">Save changes</button>
                        <button class="btn">Cancel</button>
                    </div>
                </fieldset>
            </g:form>

        </div>
    </div><!--/span-->

</div>