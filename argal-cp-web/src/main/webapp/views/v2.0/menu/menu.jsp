<ul id="menu">
	<li>
		<img src="static/img/v2.0/img/logo_argal.png" width="80" height="50" />		
	</li>	
	<li>Bienvenido:<%=request.getSession().getAttribute("userSession")%><br><a style="color: #ffffff;" class="logout" href="logout">Cerrar sesi�n</a></li>
	<li><a href="#"><img src="static/img/v2.0/img/evento.png" width="30" height="30" />Evento</a>
		<ul>
			<li><a href="#" onclick="loadPage(1);">Registrar</a></li>				
		</ul></li>
	<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
	<li>
		<a href="#"><img src="static/img/v2.0/img/catalogo.png" width="30" height="30" />Cat�logos</a>
		<ul>
			<li><a href="#" onclick="loadPage(2);">Implants</a></li>
			<li><a href="#" onclick="loadPage(3);">Hospitales</a></li>
			<li><a href="#" onclick="loadPage(4);">Permisos</a></li>
			<li><a href="#" onclick="loadPage(5);">M�dicos Trantantes</a></li>
			<li><a href="#" onclick="loadPage(6);">Cliente</a></li>
			<li><a href="#" onclick="loadPage(7);">Lista de Precios</a></li>
			<li><a href="#" onclick="loadPage(9);">Super Clientes</a></li>
			<li><a href="#" onclick="loadPage(11);">Especialidades</a></li>			
		</ul>
	</li>
	<%}%>
	<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3 || Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==2){%>
	<li>
		<a href="#"><img src="static/img/v2.0/img/report-icon.png" width="30" height="30" />Reportes</a>
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
		<a href="#"><img src="static/img/v2.0/img/sup.png" width="30" height="30" />Supervisi�n</a>
		<ul>
			<li><a href="#" onclick="alertaModal();">Alertas de Eventos</a></li>							
			<li><a href="#" onclick="ajax_download_reporte_alertas();">Obtener Reporte</a></li>
		</ul>
		
	</li>
	<%}%>
	<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
		<li><a href="#" onclick="verCambioPswDiv();"><img src="static/img/v2.0/img/changepass.png" width="30" height="30" />Cambiar Password</a>
	<%}%>	
</ul>