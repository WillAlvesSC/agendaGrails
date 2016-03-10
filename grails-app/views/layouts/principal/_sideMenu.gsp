
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<div class="nav nav-tabs nav-stacked main-menu">
						<li><a href="${createLink(uri:'/')}"><i class="fa fa-home"></i><span class="hidden-tablet"> Home </span></a></li>
                        <li><a href="${createLink(controller:'group' , action: 'index')}"><i class="fa fa-users"></i><span class="hidden-tablet"> Grupos</span></a></li>
						<li><a href="${createLink(controller:'contact' , action: 'index')}"><i class="fa fa-phone-square"></i><span class="hidden-tablet"> Contatos</span></a></li>
                        <sec:ifAllGranted roles="ROLE_ADMIN">
						    <li><a href="${createLink(controller:'user' , action: 'index')}"><i class="fa fa-file-text"></i><span class="hidden-tablet"> Usuarios</span></a></li>
                        </sec:ifAllGranted>
					</div>
				</div>
			</div>
