<ul id="menu" style="background-color:transparent">
	<li>Bienvenido:<%=request.getSession().getAttribute("userSession")%><br><a style="color: #46c2bc;" class="logout" href="logout">Cerrar sesión</a></li>
	<li><a href="#" style="color:#46c2bc;"><img src="static/img/v2.0/img/evento.png" width="30" height="30" />Evento</a>
		<ul>
			<li><a href="#" onclick="loadPage(1);">Registrar</a></li>				
		</ul></li>
	<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
	<li>
		<a href="#" style="color:#46c2bc;"><img src="static/img/v2.0/img/catalogo.png" width="30" height="30" />Catálogos</a>
		<ul>
			<li><a href="#" onclick="loadPage(2);">Implants</a></li>
			<li><a href="#" onclick="loadPage(3);">Hospitales</a></li>
			<li><a href="#" onclick="loadPage(4);">Permisos</a></li>
			<li><a href="#" onclick="loadPage(5);">Médicos Trantantes</a></li>
			<li><a href="#" onclick="loadPage(6);">Cliente</a></li>
			<li><a href="#" onclick="loadPage(7);">Lista de Precios</a></li>
			<li><a href="#" onclick="loadPage(9);">Super Clientes</a></li>
			<li><a href="#" onclick="loadPage(11);">Especialidades</a></li>
			<li><a href="#" onclick="loadPage(12);">Medicamentos</a></li>			
		</ul>
	</li>
	<%}%>
	<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3 || Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==2){%>
	<li>
		<a href="#" style="color:#46c2bc;"><img src="static/img/v2.0/img/report-icon.png" width="30" height="30" />Reportes</a>
		<ul>
			<li><a href="#" onclick="loadPage(8);">Layout</a></li>
				<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
					<li><a href="#" onclick="loadPage(10);">Versus</a></li>					
				<%}%>
		</ul>
		
	</li>
	<%}%>
	<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
	<li>
		<a href="#" style="color:#46c2bc;"><img src="static/img/v2.0/img/sup.png" width="30" height="30" />Supervisión</a>
		<ul>
			<li><a href="#" onclick="alertaModal();">Alertas de Eventos</a></li>							
			<li><a href="#" onclick="ajax_download_reporte_alertas();">Obtener Reporte</a></li>
		</ul>
		
	</li>
	<%}%>
	<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
	<li>
		<a href="#" style="color:#46c2bc;"><img src="static/img/v2.0/img/vs-icon.png" width="30" height="30" />Versus</a>
		<ul>
			<li><a href="#" onclick="loadPage(31);">Ver Versus en Eventos</a></li>
						
			<li><a href="#" onclick="loadPage(10);">Uso de Versus</a></li>	
		</ul>
	</li>
	<%}%>
	<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
		<li><a href="#" style="color:#46c2bc;" onclick="verCambioPswDiv();"><img src="static/img/v2.0/img/changepass.png" width="30" height="30" />Cambiar Password</a>
	<%}%>	
</ul>