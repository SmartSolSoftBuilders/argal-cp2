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
	<script src="../../static/js/v2.0/app/superclientes/SuperClientes.js"></script>	
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
<body bgcolor="#46C2BC">
	<header id="pageHeader">
		<table width="90%" class="pageHeader">
			<tr>
				<td align="center">
					<font color="white">HOSPITAL SYSTEM CONTROL SPENDING</font>
				</td>
			</tr>
		</table>
		<jsp:include page="../menu/menu2.jsp" />
	</header>
	<div id="pageContainer" style="width: 1250px;">
		<div id="contentContainer" class="clearfix" align="center">
			<nav id="pageNav"></nav>
			<section id="pageSection" >			
			  <div class="form-group">
			  	<h5><img src="../../static/img/v2.0/img/supercliente.png" height="40" width="40" id="imgImplants" name="imgImplants"/>CATÁLOGO DE SUPER CLIENTES
			  		
			  		<br><a href="#" onclick="agregarClienteShow()"><img src="../../static/img/v2.0/img/agregarsupercliente.png" height="30" width="30" id="imgCte12" name="imgCte12"/>Nuevo Super Cliente</a>
			  	</h5>
				<div class="register f1" align="left">SELECCIONE UN SUPER CLIENTE: <select href="#" name="listaSuperClientes" id="listaSuperClientes" ></select></div> 	
				<div class="register f1" align="right" ><a href="#" onclick="tablaSuperClienteShow()"><img src="../../static/img/v2.0/img/modificar.jpeg" height="30" width="30" /><U><B> MODIFICAR SUPER CLIENTE </B></U></a> </div>		  	
			   <B> SELECCIONE LOS CLIENTES ASOCIADOS AL SUPER CLIENTE:</B>
			    <form id="allclientesforms" name="allclientesforms" class="register f1" method="post">
               		<table id="tablaListaSuperClientes" class="display" cellspacing="0" width="100%">
					 <thead>
			            <tr>
			                <th>Id Cliente</th>
			                <th>Nombre Corto</th>				                				                
			                <th>Contacto</th>
			                <th>Teléfono Oficina</th>				                				               
			                <th>Email</th>
			                <th>Nick</th>			                
			                <th>Asignar</th>
			                <th>Quitar</th>
			            </tr>
			    		</thead>
			    		<tbody align="center">
			    		</tbody>
					</table>								                		              

				</form>								
				<div id="divaltaSuperCliente" title="Agregar Super Cliente" style="display: none" align="center">					
					<jsp:include page="alta_super_cliente.jsp" />
				</div>
				<div id="divEditarSuperCliente" title="Editar Super Cliente" style="display: none" align="center">					
					<jsp:include page="editar_super_cliente.jsp" />
				</div> 
				<div id="divTablaSuperCliente" title="Modificar Super Cliente" style="display: none" align="center">					
					<jsp:include page="tabla_super_clientes.jsp" />
				</div>  			  			  			    				
				<div id="dialog-message-borrarcliente" title="¿Eliminar Cliente?" style="display: none" align="center">					
					<p>¿Seguro que desea eliminar al Cliente?</p>					
				</div>
				<div id="dialog-message-cliente" title="Aviso" style="display: none" align="center">					
					<div id="mensajeGuardarCliente"></div>					
				</div>
			  </div>			  			
			</section>
			<aside id="pageAside"></aside>
		</div>
		<footer id="pageFooter"></footer>
	</div>
</body>
</html>