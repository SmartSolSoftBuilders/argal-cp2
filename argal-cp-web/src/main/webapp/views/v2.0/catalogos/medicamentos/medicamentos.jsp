<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>ARGAL-HSCS</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="../../static/js/v2.0/app/medicamentos/Medicamentos.js?version=1"></script>	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.2.8/jquery.form-validator.min.js"></script>
	<script src="../../static/js/v2.0/js/msjvalidator.js"></script>	
	<link rel="stylesheet" href="../../static/js/v2.0/js/screen.css" />
	<link rel="stylesheet" href="../../static/css/v2.0/jquery.dataTables.min.css" />
	<link rel="stylesheet" href="../../static/css/v2.0/argal_style.css" />
	<link rel="stylesheet" href="../../static/css/v2.0/form.css" />
	<link rel="stylesheet" href="../../static/css/v2.0/jquery-ui.css">
	<script src="../../static/js/v2.0/js/jquery.plugin.js"></script>	
	<script src="../../static/js/v2.0/js/jquery.form.js"></script>

</head>
<style>
h2 {
    width: 100%;
    margin: 0;
    padding: 0;
    text-align: center;
}
h2:after {
    display: inline-block;
    margin: 0 0 8px 20px;
    height: 3px;
    content: " ";
    text-shadow: none;
    background-color: #999;
    width: 140px;
}
h2:before {
    display: inline-block;
    margin: 0 20px 8px 0;
    height: 3px;
    content: " ";
    text-shadow: none;
    background-color: #999;
    width: 140px;
}
</style>
<body bgcolor="#46C2BC">
	<header id="pageHeader" style="margin:0px auto 0px 3.7%;width:92.7%;height:inherit;">
	<table style="width:100%; background-repeat:no-repeat;background-size:cover;" background="../../static/img/v2.0/img/bk1.png">
		<tr>
		<td align="center">
			<img src="../../static/img/v2.0/img/logo_nuevo.png"/>
		</td>
		<td >
			<a href="#" onclick="location.href='/argal-web?p=1';">
				<img src="../../static/img/v2.0/img/boton-inicio.png" width="60" height="60" onclick="location.href='/argal-web?p=1';">
			</a>			
		</td>
		<td>
		<font color="#262020">Bienvenido:<%=request.getSession().getAttribute("userSession")%></font>
		</td>
	</tr></table>
	</header>
	
	<div id="pageContainer" style="width: 1250px;">
		<div id="contentContainer" class="clearfix" align="center">
			<nav id="pageNav"></nav>
			<section id="pageSection" >			
			  <div class="form-group">
			  	<h2><img src="../../static/img/v2.0/img/cat_med.png" height="30" width="30" id="imgAltaEvento" name="imgAltaEvento"/>Catálogo de Medicamentos</h2>
			  	<div id="tabs">
				  <ul>
				    <li><a href="#tabs-1">Medicamentos Registrados</a></li>
				    <li><a href="#tabs-2">Listas de Precios de Medicamentos</a></li>
				    <!--  li><a href="#tabs-3">Test</a></li-->				    
				  </ul>
				  <div id="tabs-1">				    			  
		            <fieldset class="row1">
				    	<h3>Medicamentos Registrados
	                	</h3>	
	               		<table id="tablaMedicamentosAll" class="display" cellspacing="0" width="100%">
						 <thead>
				            <tr>
				                <th>Ean</th>
				                <th>Nombre</th>
				                <th>Sustancia Activa</th>
				                <th>Laboratorio</th>				                
				                <th>Precio Máximo Venta</th>				                				                				                				              
				                <th>Tipo</th>
				            </tr>
				    		</thead>
				    		<tbody>
				    		</tbody>
						</table>								                		              
		            </fieldset>																    	
				  </div>
				  <div id="tabs-2">
				  	<fieldset class="row1">				    	
	                	<h5 align="right"><a href="#" onclick="showDivAlta();"><img src="../../static/img/v2.0/img/subir_icon.png" height="30" width="30"/>
	                	Subir Nueva Lista</a>
	                	</h5>	
	               		<h3>Listas Registradas
	                	</h3>
	               		<table id="tablaListaMedicamentosAll" class="display" cellspacing="0" width="100%">
						 <thead>
				            <tr>
				                <th>Id Lista</th>
				                <th>Activa</th>
				                <th>Fecha Subida</th>
				                <th>Num Registros</th>				                				                
				                <th>Ver Archivo</th>
				                <th>Eliminar</th>				                				               
				            </tr>
				    		</thead>
				    		<tbody>
				    		</tbody>
						</table>								                		              
		            </fieldset>				    
				  </div>
				  <!-- div id="tabs-3">
				  		Palabra:<input type="text" id="palabra" name="palabra"/>
				  		<input type="button" onclick="findWord()" value="test"/>
				  </div-->
				</div>
				<div id="divAgregarListaPreciosMedicamentos" title="Agregar Lista de Precios de Medicamentos" style="display: none" align="center">					
					<jsp:include page="alta_lista.jsp" />
				</div>	  	
				<div id="dialog-message-lpm" title="AVISO" style="display: none" align="center">					
					<div id="mensajeGuardarAviso"></div>					
				</div>
			  </div>			  			
			</section>
			<aside id="pageAside"></aside>
		</div>
		<footer id="pageFooter"></footer>
	</div>
</body>
</html>