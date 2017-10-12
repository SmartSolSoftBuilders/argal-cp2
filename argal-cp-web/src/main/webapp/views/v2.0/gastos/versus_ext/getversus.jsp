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
<title>ARGAL-HSCS (Versus extendido)</title>
<script src="../../static/js/v2.0/js/jquery-2.2.0.js"></script>
<script src="../../static/js/v2.0/js/jquery-ui.js"></script>
<script src="../../static/js/v2.0/js/jquery.dataTables.min.js"></script>
<script src="../../static/js/v2.0/js/jquery.plugin.js"></script>		
<script src="../../static/js/v2.0/js/jquery.form-validator.min.js"></script>
<script src="../../static/js/v2.0/js/msjvalidator.js"></script>
<script src="../../static/js/v2.0/js/jquery.form.js"></script>
<script src="../../static/js/v2.0/app/util/validaciones_registro.js?version=3"></script>
<script src="../../static/js/v2.0/app/versus/VersusExt.js"></script>
<link rel="stylesheet" href="../../static/css/v2.0/jquery.dataTables.min.css" />
<link rel="stylesheet" href="../../static/css/v2.0/argal_style.css" />
<link rel="stylesheet" href="../../static/css/v2.0/jquery-ui.css">
<link rel="stylesheet" href="../../static/js/v2.0/js/screen.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
<script src="http://cdn.imnjb.me/libs/jquery.cookiecuttr/1.0/jquery.cookiecuttr.min.js"></script>
</head>
<input type="hidden" id="p0" value="<c:out value="${prms[0]}"></c:out>"/>
<input type="hidden" id="p1" value="<c:out value="${prms[1]}"></c:out>"/>
<input type="hidden" id="p2" value="<c:out value="${prms[2]}"></c:out>"/>
<input type="hidden" id="p3" value="<c:out value="${prms[3]}"></c:out>"/>
<div id="tituloGastos">
<table style="background-color:#46c2bc;">	
<tr>
	<td style="width:20%">
		<img src="../../static/img/v2.0/img/logo_argal.png"/>		
	</td>
	<td style="width:60%">
		<table>
			<tr>
				<td><font color='white'>ID Evento:</font><c:out value="${prms[4]}"/></td>
				<td><font color='white'>Titular:</font><c:out value="${prms[5]}"/></td>
				<td><font color='white'>Paciente:</font><c:out value="${prms[6]}"/></td>				
			</tr>
			<tr>
				<td><font color='white'>Cliente:</font><c:out value="${prms[7]}"/></td>				
				<td><font color='white'>Hospital:</font><c:out value="${prms[8]}"/></td>	
				<td></td>							
			</tr>
		</table>
	</td>
	<td>
		<a href="#" onclick="ajax_downloadPDF();"><img src="../../static/img/v2.0/img/Descargar-PDF-COMOF.png" width=70% height=70% /></a>
	</td>
</tr>
</table>	
</div>

<input type="hidden" id="statusEventoHid" name="statusEventoHid"/>
<input type="hidden" id="idEventoHid" name="idEventoHid"/>
<input type="hidden" id="idHospitalHid" name="idHospitalHid"/>
<input type="hidden" id="nameClienteHid" name="nameClienteHid"/>						  
<input type="hidden" id="nameHospitalHid" name="nameHospitalHid"/>
<h5>A continuación se muestra el resultado del VERSUS Extendido:</h5>
<div id="divVersus" style="display:none" >
	<div id="tabsVersus">
	  <ul>
	    <li><a href="#tabs-versus1">Comparativo</a></li>
	    <li><a href="#tabs-versus2">Medicamentos</a></li>
	    <li><a href="#tabs-versus3">Tratamiento Médico</a></li>
	   </ul>  
	   <div id="tabs-versus1">   
		<label>RESULTADOS DEL COMPARATIVO (VERSUS):</label>
			<table id="tablaResultadoVersus" class="display" cellspacing="0" width="100%">
				<thead>
		           <tr>
		              <th># Renglón</th>
		              <th>Código</th>
		              <th>Fecha</th>
		              <th>Producto</th>
		              <th>Costo Lista de Precios</th>
		              <th>Costo Estado de Cuenta</th>
		              <th>Diferencia</th>
		              <th>¿Gasto Observado?</th>
		              <th>Área</th>
		              <th>Rubro</th>				                				               
		              <!--th style="display:none">Rubro</th-->
		           </tr>
		    	</thead align="center">
		    	<tbody align="center">
		    	</tbody>
			</table>
			Subtotales de productos encontrados en la lista de precios:
			<table>
				<tr>
					<td><div id="subTotalVersus"></div></td>
					<td><div id="desviosVersus"></div></td>
					<td><div id="DifTotalDesviosVersus"></div></td>
				</tr>
			</table>			
		</div>
		<div id="tabs-versus2">
			<jsp:include page="comparativo_medicamentos.jsp"></jsp:include>
		</div>
		<div id="tabs-versus3">
			<jsp:include page="comparativo_trat_med.jsp"></jsp:include>
		</div>
	</div>			
</div>	