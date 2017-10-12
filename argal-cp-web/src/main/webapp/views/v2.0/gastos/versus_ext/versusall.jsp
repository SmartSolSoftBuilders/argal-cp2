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
<script src="../../static/js/v2.0/js/jquery-2.2.0.js"></script>
<script src="../../static/js/v2.0/js/jquery-ui.js"></script>
<script src="../../static/js/v2.0/js/jquery.dataTables.min.js"></script>
<script src="../../static/js/v2.0/js/jquery.plugin.js"></script>		
<script src="../../static/js/v2.0/js/jquery.form-validator.min.js"></script>
<script src="../../static/js/v2.0/js/msjvalidator.js"></script>
<script src="../../static/js/v2.0/js/jquery.form.js"></script>
<script src="../../static/js/v2.0/app/versus/VersusExtMain.js?version=15"></script>
<link rel="stylesheet" href="../../static/css/v2.0/jquery.dataTables.min.css" />
<link rel="stylesheet" href="../../static/css/v2.0/argal_style.css" />
<link rel="stylesheet" href="../../static/css/v2.0/jquery-ui.css">
<link rel="stylesheet" href="../../static/js/v2.0/js/screen.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
<script src="http://cdn.imnjb.me/libs/jquery.cookiecuttr/1.0/jquery.cookiecuttr.min.js"></script>
</head>

<body bgcolor="#46C2BC">
	<header id="pageHeader" style="margin:0px auto 0px 1%;width:98.1%;height:inherit;">
	<table style="width:100%; background-repeat:no-repeat;background-size:cover;" background="../../static/img/v2.0/img/bk1.png" border=0>
		<tr>
		<td align="center">
			<img src="../../static/img/v2.0/img/logo_nuevo.png"/>
		</td>
		<td>
			<a href="#" onclick="location.href='/argal-web?p=1';">
				<img src="../../static/img/v2.0/img/boton-inicio.png" width="60" height="60" onclick="location.href='/argal-web?p=1';">
			</a>			
		</td>		
		</tr>
	</table>
	</header>
	
	<div id="pageContainer" style="width: 98%">
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
				Cliente:<select style="width:200px;" id="clienteSelCatPrecios" name="clienteSelCatPrecios" data-validation="required" onchange="redirectParam()">   																	
								<option value="0">Seleccione...</option>
				</select>
				Hospital:<select style="width:200px;" id="hospitalSelCatPrecios" name="hospitalSelCatPrecios" data-validation="required" onchange="redirectParam()">   																	
								<option value="0">Seleccione...</option>
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
					<div id="contenidoTablaEventos" align="center">						
						<table id="tablaEventosVersus" class="display" style="display:none;" cellspacing="0" >
							<thead>
								<tr>
									<th>Id Evento</th>
									<th>Folio Hospital</th>
									<th>Folio Argal</th>
									<th>Fecha</th>									
									<th>Cliente</th>
									<th>Hospital</th>
									<th>Paciente</th>
									<th>Implant</th>
									<th>Versus</th>
									<th>Estado de Cuenta Final</th>																																																																																																			
								</tr>
							</thead>
							<tbody align="center">
							</tbody>
						</table>
					</div>										
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