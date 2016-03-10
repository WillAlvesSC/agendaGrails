<meta name="layout" content="/signupLayout/main"/>
    <title> Novo Usuario</title>
<style>
    body{
        background: url(http://g-ecx.images-amazon.com/images/G/01/aplusautomation/vendorimages/04129b1c-f902-4ddb-a05d-51258619fd39._CB326774362__SR970,300_.jpg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
</style>
<g:form controller="user" action="saveUser" class="form-horizontal text-center" style="margin-top: 15%;">
    <fieldset>
        <legend class="text-left">Cadastro de Usuario</legend>
        <div class="control-group">
            <label class="control-label" for="username">Login</label>
            <div class="controls">
                <input class="input-xlarge focused" id="username" name="username" type="email" placeholder="Digite seu login">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="password">Senha</label>
            <div class="controls">
                <input class="input-xlarge focused" id="password"  name="password" type="password" placeholder="Digite sua senha">
            </div>
        </div>
        <div class="form-actions text-right">
            <button type="submit" class="btn btn-primary">Save changes</button>
            <button class="btn">Cancel</button>
        </div>


        </fieldset>
</g:form>