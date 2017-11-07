<ul class="nav">
	<li class="active"><a href="#"><img
			src="static/img/logoArgal2.png" width="200px" height="150px" /></a></li>
	<li><a href="#"><i class="icon-home icon-white"></i> Home</a></li>
	<li><a href="#" onclick="loadPage('views/med_tratante/solicitar_cirugiap')">Solicitar
			Cirugía Programada</a></li>
<li><a href="#" onclick="loadPage('views/med_tratante/solicitudes')">Ver
			Mis Solicitudes</a></li>
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#">Mi Perfil<b class="caret"></b></a>
		<ul class="dropdown-menu">
			<li><a href="#">Editar</a></li>
			<li><a href="#">Cambiar Password</a></li>
		</ul></li>
	<li><a href="#">Bienvenido: <c:out value='${usuario.nombre}'/></a></li>
</ul>