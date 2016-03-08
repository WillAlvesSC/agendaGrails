
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<div class="nav nav-tabs nav-stacked main-menu">
						<sec:ifAllGranted roles="ROLE_ADMIN">
						    <li><a href="${createLink(controller:'user' , action: 'index')}"><i class="fa fa-user"></i><span class="hidden-tablet">Grupos</span></a></li>
                        </sec:ifAllGranted>
                        <li><a href="${createLink(controller:'project' , action: 'index')}"><i class="fa fa-users"></i><span class="hidden-tablet"> Grupos</span></a></li>
						<li><a href="${createLink(controller:'file' , action: 'upload')}"><i class="fa fa-phone-square"></i><span class="hidden-tablet"> Contatos</span></a></li>
                        <sec:ifAllGranted roles="ROLE_ADMIN">
						    <li><a href="${createLink(controller:'log' , action: 'downloads')}"><i class="fa fa-file-text"></i><span class="hidden-tablet"> Usuarios</span></a></li>
                            <li><a href="${createLink(controller:'config' , action: 'index')}"><i class="fa fa-cog"></i><span class="hidden-tablet"> System Configs</span></a></li>
                        </sec:ifAllGranted>
					</div>
				</div>
			</div>
