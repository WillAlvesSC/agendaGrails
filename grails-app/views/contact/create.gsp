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
            <g:form controller="contact" action="saveContact" class="form-horizontal">
                <fieldset>
                    <div class="control-group">
                        <label for="name" class="control-label">Nome</label>
                        <div class="controls">
                            <input type="text" placeholder="Digite o nome do Grupo" id="name" name="name" class="input-xlarge focused" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="telephone" class="control-label">Telefone</label>
                        <div class="controls">
                            <input type="text" placeholder="Digite o telefone" id="telephone" name="name" class="input-xlarge focused" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="email" class="control-label">Email</label>
                        <div class="controls">
                            <input type="text" placeholder="Digite o Email" id="email" name="name" class="input-xlarge focused" >
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="name" class="control-label">Grupo</label>
                        <div class="controls">
                            <select type="text" placeholder="Digite o Email" id="groupID" name="groupID" class="chzn-container chzn-container-single" >
                                <option value="0">Select one option ...</option>
                                <g:each in="${groups}">
                                    <option value="it.id">${it.name}</option>
                                </g:each>
                            </select>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button class="btn btn-primary" type="submit">Save changes</button>
                        <button class="btn">Cancel</button>
                    </div>
                </fieldset>
            </g:form>

        </div>
    </div><!--/span-->

</div>