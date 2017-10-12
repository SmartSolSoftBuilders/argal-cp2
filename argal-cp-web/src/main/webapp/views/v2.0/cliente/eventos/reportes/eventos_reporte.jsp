<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="../../static/js/v2.0/app/cliente_view/reportes/Reporte_Diario.js?version=1"></script>
<link rel="stylesheet" href="../../static/css/v2.0/jquery.dataTables-repo.min.css" />
<link rel="stylesheet" href="../../static/css/v2.0/argal_style_cliente.css" />
<link rel="stylesheet" href="../../static/css/v2.0/jquery-ui-cliente.css">
<link rel="stylesheet" href="../../static/css/v2.0/argal_reports.css">
<style>
</style>
</head>
<body bgcolor="#46C2BC">
	<header id="pageHeader">
		<table><tr>
		<td><img src="../../static/img/v2.0/img/logoArgal2.png" width="200" height="70" /></td>
		<td align="center"><font color="white">HOSPITAL SYSTEM CONTROL SPENDING</font><br>
		<font color="#262020">Bienvenido:<br><%=request.getSession().getAttribute("userSession")%></font></td>
		<td align="right"><jsp:include page="../../menu_cliente/menu2.jsp" /></td>
		</tr></table>
	</header>
	<div id="pageContainer" style="width: 98%">
		<div id="contentContainer" class="clearfix">
			<nav id="pageNav">
				<center>
				<h4 align="center">REPORTE DIARIO DE ATENCIÓN HOSPITALARIA
					<%
					   Date dNow = new Date();
					   SimpleDateFormat ft = 
					   new SimpleDateFormat ("MM/dd/yyyy");
					   String currentDate = ft.format(dNow);
					%></h4>
					<%=currentDate%>
				</center>
			</nav>									
			<section id="pageSection">					
				Mostrar Eventos de:
				<select style="width:200px;" id="showeventosbycliente" name="showeventosbycliente" data-validation="required" onchange="obtenerEventosSC()">   																						
				</select>
				Seleccione el tipo de Reporte:
				<select style="width:200px;" id="tipoReporte" name="tipoReporte" data-validation="required" onchange="obtenerEventosSC()">				
					<option value="1">Hospitalizados</option>
					<option value="2">Ingresos por Urgencia</option>
					<option value="3">Ingresos de Cirugías Programadas y de Corta Estancia</option>
					<option value="4">Egresos</option>
					<option value="7">Egresos Cirugías Programadas</option>
					<option value="6">Nacimientos</option>
					<option value="5">Defunciones</option>														   																					
				</select>
				<header class="sectionHeader">					
				</header>
				<article class="sectionArticle">
					<br>
					<div id="contenidoMenu" align="center"></div>
					<div id="loading" align="center">
						<div><h4>Obteniendo Eventos....</h4></div>
						<div><img src="../../static/img/v2.0/img/loadingEvent.gif" /></div>
					</div>
					<div id="tituloTablaEventosJubilados" align="center">ACTIVOS</div>
					<div id="contenidoTablaEventos" align="center">
						<table id="tablaEventosReporteDiario" class="display" style="display:none;" cellspacing="0" >
							<thead>
								<tr>									
									<th>Hospital</th>
									<th>Fecha Ingreso</th>
									<th>Acumulados</th>
									<th>No Autorización</th>
									<th>Paciente</th>
									<th>Edad</th>
									<th>Nómina</th>
									<th>Parentesco</th>									
									<th>Tipo Ingreso</th>
									<th>ICD</th>									
									<th>Interconsultas</th>									
									<th>Tratamiento Médico</th>																																																									
									<th>Médico Tratante</th>																										
									<th>Monto Anterior</th>
									<th>Monto Actual</th>									
									<th>Observaciones Médicas</th>
									<th>Obtener Reporte</th>
								</tr>
							</thead>
							<tbody align="center">
							</tbody>
						</table>
					</div>
					<div id="contenidoTablaEventosJubilados" align="center">
						JUBILADOS
						<table id="tablaEventosReporteDiarioJubilados" class="display"  cellspacing="0" >
							<thead>
								<tr>									
									<th>Hospital</th>
									<th>Fecha Ingreso</th>
									<th>Acumulados</th>
									<th>No Autorización</th>
									<th>Paciente</th>
									<th>Edad</th>
									<th>Nómina</th>
									<th>Parentesco</th>									
									<th>Tipo Ingreso</th>
									<th>ICD</th>									
									<th>Interconsultas</th>									
									<th>Tratamiento Médico</th>																																																									
									<th>Médico Tratante</th>																										
									<th>Monto Anterior</th>
									<th>Monto Actual</th>									
									<th>Observaciones Médicas</th>
									<th>Obtener Reporte</th>
								</tr>
							</thead>
							<tbody align="center">
							</tbody>
						</table>
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