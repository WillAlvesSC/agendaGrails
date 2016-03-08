
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="${createLink(uri: '/')}"><span> Minha Agenda </span></a>
								

				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">


						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i><i class="fa fa-user"></i> <sec:loggedInUserInfo field="username"></sec:loggedInUserInfo>
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#"></i><i class="fa fa-user"></i> Profile</a></li>
								<li><a href="${createLink(controller: 'logout')}""><i class="fa fa-power-off Logout"></i> Logout</a></li>
							</ul>
						</li>

					</ul>
				</div>

				
			</div>
		</div>
	</div>
