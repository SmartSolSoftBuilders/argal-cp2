<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="static/js/v2.0/app/cliente_view/evento/Evento_Cliente.js?version=6"></script>
<link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" />
<link rel="stylesheet" href="static/css/v2.0/argal_style_cliente.css" />
<link rel="stylesheet" href="static/css/v2.0/jquery-ui-cliente.css">
<link rel="stylesheet" href="static/css/v2.0/argal_reports.css">
<style>
</style>
</head>
<body bgcolor="#46C2BC">	
	<header id="pageHeader">
	<table><tr>
		<td><img src="static/img/v2.0/img/logoArgal2.png" width="200" height="70" /></td>
		<td align="center"><font color="white">HOSPITAL SYSTEM CONTROL SPENDING</font><br>
		<font color="#262020">Bienvenido:<br><%=request.getSession().getAttribute("userSession")%></font></td>
		<td align="right"><jsp:include page="../menu_cliente/menu.jsp" /></td>
	</tr></table>
	</header>
	<div id="pageContainer" style="width: 98%">
		<div id="contentContainer" class="clearfix">
			<nav id="pageNav"></nav>
			<h4 align="center">En ésta sección se muestran todos los eventos monitoreados por ARGAL</h4>
			<section id="pageSection">					
				Mostrar Eventos Registrados desde:
				<select style="width:200px;" id="showeventosby" name="showeventosby" data-validation="required" onchange="redirectParam()">   																	
						<option value="1">30 DÍAS ANTES</option>
						<option value="2">60 DÍAS ANTES</option>								
						<option value="3">120 DÍAS ANTES</option>
						<option value="4">400 DÍAS ANTES</option>
						<option value="5">TODOS LOS EVENTOS</option>
				</select>
				<header class="sectionHeader">					
				</header>
				<article class="sectionArticle">
					<br>
					<div id="contenidoMenu" align="center"></div>
					<div id="loading" align="center">
						<div><h4>Obteniendo Eventos....</h4></div>
						<div><img src="static/img/v2.0/img/loadingEvent.gif" /></div>
					</div>
					<div id="contenidoTablaEventos" align="center">
						<table id="tablaEventos" class="display" style="display:none;" cellspacing="0" >
							<thead>
								<tr>
									<th>Folio Hospital</th>
									<th>Folio Argal</th>
									<th>Fecha Ingreso</th>
									<th>Cliente</th>
									<th>Paciente</th>
									<th>Hospital</th>																	
									<th>Estado del Evento</th>
									<th>Monto Actual</th>																		
									<th>Días Hospitalización</th>
									<th>Detalle Evento</th>
									<th>Gastos</th>
									<th>Seguimiento Médico</th>
									<th>Datos de Egreso</th>
									<th>Balance Final</th>								
								</tr>
							</thead>
							<tbody align="center">
							</tbody>
						</table>
					</div>
					<div id="divDetalleEvento" title="Detalle Evento" style="display: none"
						align="center">	
						<jsp:include page="../eventos/view_evento.jsp" />
					</div>										
					<div id="divGastos" title="Control de Gastos" style="display: none"
						align="center">	
						<jsp:include page="../gastos/view_gastos.jsp" />
					</div>
					<div id="divBitacoras" title="Seguimiento Médico"
						style="display: none" align="center">
						<jsp:include page="../bitacoras/view_bitacoras.jsp" />
					</div>
					<div id="divEgreso" title="Egreso del Paciente" style="display: none"
						align="center">
						<jsp:include page="../egreso/view_egreso.jsp" />
					</div>
					<div id="divFinalizar" title="Balance Final" style="display: none"
						align="center">
						<jsp:include page="../balance/view_balance.jsp" />
					</div>
					<div id="divCambiarPassword" title="Cambiar Password" style="display: none"
						align="center">
						<jsp:include page="password/passw.jsp" />
					</div>
					<div id="dialog-confirm" title="¿Eliminar el evento?"  style="display: none" align="center">
  						<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>Se eliminarán todos los gastos, bitácoras, facturas y datos del evento :<div id="divEventoEliminar"></div>Continuar?</p>
					</div>
					<div id="dialog-message" title="Guardar Evento" style="display: none" align="center">					
						<div id="mensajeGuardar"></div>					
					</div>
					<div id="dialog-message-candados" title="AVISO!!!" style="display: none" align="center">
						<div id="mensajeAvisoCandados"></div>
					</div>
				</article>
				<footer class="sectionFooter"></footer>
			</section>
			<aside id="pageAside"></aside>
		</div>
		<footer id="pageFooter"></footer>
	</div>
</body>
</html>