 <% 
 response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>ARGAL-HSCS</title>
<script src="static/js/v2.0/js/jquery-2.2.0.js"></script>
<script src="static/js/v2.0/js/jquery-ui.js"></script>
<script src="static/js/v2.0/js/jquery.dataTables.min.js"></script>
<script src="static/js/v2.0/js/jquery.plugin.js"></script>		
<script src="static/js/v2.0/js/jquery.form-validator.min.js"></script>
<script src="static/js/v2.0/js/msjvalidator.js"></script>
<script src="static/js/v2.0/js/jquery.form.js"></script>
<script src="static/js/v2.0/app/util/validaciones_registro.js?version=3"></script>
<script src="static/js/v2.0/app/evento/Evento.js?version=16"></script>
<script src="static/js/v2.0/app/evento/EditarEvento.js?version=7"></script>
<script src="static/js/v2.0/app/bitacora/Bitacora.js?version=9"></script>
<script src="static/js/v2.0/app/bitacora/TratMed.js?version=2"></script>
<script src="static/js/v2.0/app/gastos/Gastos.js?version=22"></script>
<script src="static/js/v2.0/app/egreso/Egreso.js?version=10"></script>
<script src="static/js/v2.0/app/finalizar/Finalizar.js?version=8"></script>
<script src="static/js/v2.0/app/alertas/Alertas.js?version=3"></script>
<link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" />
<link rel="stylesheet" href="static/css/v2.0/argal_style.css" />
<link rel="stylesheet" href="static/css/v2.0/jquery-ui.css">
<link rel="stylesheet" href="static/js/v2.0/js/screen.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
<script src="http://cdn.imnjb.me/libs/jquery.cookiecuttr/1.0/jquery.cookiecuttr.min.js"></script>
</head>

<body bgcolor="#ecf6f6">
	<header id="pageHeader" style="margin:0px auto 0px 0%;width:100%;height:inherit;">
	<table style="width:100%; background-repeat:no-repeat;background-size:cover;" background="static/img/v2.0/img/bk1.png" border=0>
		<tr>
		<td align="center">
			<img src="static/img/v2.0/img/logo_nuevo_menu.png"/>
		</td>
		<td>
			<jsp:include page="../menu/menu_new.jsp" />			
		</td>		
		</tr>
	</table>
	</header>
	
	<div id="pageContainer" style="width: 98%;border-style: solid; border-color: #46c2bc;">
		<div id="contentContainer" class="clearfix">
			<nav id="pageNav"></nav>
			<section id="pageSection">		
					
				Mostrar Eventos Registrados desde:
				<select style="width:200px;" id="showeventosby" name="showeventosby" data-validation="required" onchange="redirectParam()">   																	
								<option value="1">30 DÍAS ANTES</option>
								<option value="2">60 DÍAS ANTES</option>								
								<option value="3">120 DÍAS ANTES</option>
								<option value="4">400 DÍAS ANTES</option>
								<option value="5">TODOS LOS EVENTOS</option>
				</select>		
				<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==2){%>
					<%if (Boolean.parseBoolean(""+request.getSession().getAttribute("bloqueado"))==true){%>
		        		<div id="mensageBloqueo" ><%="&nbsp;&nbsp;No puedes crear nuevos eventos porque tienes demasiados eventos sin completar."%></div>	
					<%}%>
				<%}%>	
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
									<th>Id Evento</th>
									<th>Folio Hospital</th>
									<th>Folio Argal</th>
									<th>Fecha Ingreso</th>
									<th>Cliente</th>
									<th>Hospital</th>
									<th>Paciente</th>									
									<th>Estado del Evento</th>									
									<th>Editar Datos</th>																		
									<th align="center">Control de Gastos</th>
									<th>Seguimiento Médico</th>
									<th>Egresar Paciente</th>
									<th>Finalizar Evento</th>
									<th>Editado Por</th>
									<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
									<th>Eliminar</th>			
									<%}%>								
									<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==2){%>
									<th style="display:none">alertas</th>			
									<th style="display:none">alertas</th>			
									
									<%}%>																							
								</tr>
							</thead>
							<tbody align="center">
							</tbody>
						</table>
					</div>					
					<div id="divEditar" title="Editar Datos del Evento" style="display: none"
						align="center">
						<jsp:include page="editar_evento.jsp" />
					</div>
					<div id="divGastos" title="Control de Gastos" style="display: none"
						align="center">	
						<jsp:include page="../gastos/gastos.jsp" />
					</div>
					<div id="divBitacoras" title="Seguimiento Médico"
						style="display: none" align="center">
						<jsp:include page="../bitacoras/bitacoras.jsp" />
					</div>
					<div id="divEgreso" title="Egresar Paciente" style="display: none"
						align="center">
						<jsp:include page="../egreso/egreso.jsp" />
					</div>
					<div id="divFinalizar" title="Finalizar Evento" style="display: none"
						align="center">
						<jsp:include page="../finalizar/finalizar.jsp" />
					</div>
					<div id="dialog-confirm" title="¿Eliminar el evento?"  style="display: none" align="center">
  						<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>Se eliminarán todos los gastos, bitácoras, facturas y datos del evento :<div id="divEventoEliminar"></div>Continuar?</p>
					</div>
					<div id="dialog-message" title="Guardar Evento" style="display: none" align="center">					
						<div id="mensajeGuardar"></div>					
					</div>
					<div id="dialog-message-candados" title="AVISO!!" style="display: none" align="center">					
						<div id="mensajeCandado"></div>					
					</div>
					<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
					<div id="alertas" title="ALERTAS" style="display: none" align="center">
						<jsp:include page="../alertas/alertas.jsp" />
						<div id="mensajeAvisoCandados"></div>
					</div>
					<%}%>	
					<div id="divAlertasByEvento" style="display: none" title="Alertas por Evento"  align="center">
						<jsp:include page="../alertas/alertasImplant.jsp" />					
					</div>		          
					<%if (Integer.parseInt(""+request.getSession().getAttribute("tipoUsuarioLogin"))==3){%>
						<div id="divCambiarPassword" title="Cambiar Password" style="display: none"
							align="center">
							<jsp:include page="password/passw.jsp" />
						</div>
					<%}%>
				</article>
				<footer class="sectionFooter"></footer>
			</section>
			<aside id="pageAside">
				<!--  input type="button" onclick="testBit()" value="test"/-->
			</aside>
		</div>
		<footer id="pageFooter"></footer>
	</div>
</body>
</html>