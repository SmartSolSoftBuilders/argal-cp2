 <% 
 response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<html>
<head>
 <title>Argal-Cirugías Programadas</title>
<!-- Mobile viewport optimized: h5bp.com/viewport -->
  <meta name="viewport" content="width=device-width">
<!-- CSS -->
    <link href="static/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />   
    <link href="static/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />          
    <link rel="stylesheet" href="static/css/jquery-ui.css">
		
<!--Scripts-->
    
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.min.css" />
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid-theme.min.css" /> 	
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="static/bootstrap/js/bootstrap.js" type="text/javascript"></script>	
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script> 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.min.js"></script>
 	<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" /> 
 <script>
 	$(document).ready(function() {
	    $('#example').DataTable();
	} );
 	
 	function loadPage(pagina){
 		$("#mainContent").html("");
 		$("#loadingMain").show();
 		$("#mainContent").load(pagina+".jsp");
 	}
 	function loadPageData(pagina,param){
 		$("#mainContent").html("");
 		$("#loadingMain").show();
 		$("#mainContent").load("mvc/index/getpagecontent?page="+pagina+"&param="+param);
 	}
 	
 </script>
</head>
<body>
<div class="container-fluid">
<header> 
<div class="row-fluid">
<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container-fluid">
		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</a>
		<div class="nav-collapse collapse">			
			<c:if test='${usuario.roles[0].rol=="ROLE_MEDICO_TRATANTE"}'>
				<jsp:include page="menu/menu.jsp"/>				
			</c:if>
			<c:if test='${usuario.roles[0].rol=="ROLE_DICTAMINADOR"}'>
				<jsp:include page="menu/menu_dictaminador.jsp"/>				
			</c:if>
			<c:if test='${usuario.roles[0].rol=="ROLE_NEGOCIADOR"}'>
				<jsp:include page="menu/menu_negociador.jsp"/>				
			</c:if>
			<c:if test='${usuario.roles[0].rol=="ROLE_AUTORIZADOR"}'>
				<jsp:include page="menu/menu_autorizador.jsp"/>				
			</c:if>
		</div>
    </div><!-- /.nav-collapse -->       
    </div><!-- /.container -->
  </div><!-- /.navbar-inner -->
</div><!-- /.navbar -->
</header>
</div>
<div id="loadingMain" align="center" style="display:none;">
    	Por favor espere....<br><img src="static/img/loading1.gif"/>    
</div>
<div id="mainContent">
	<h4>Bienvenido al Sistema de Cirugías Programadas</h4>
	<h5>NOTIFICACIONES</h5>
	 <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>#Folio Notificación</th>
                <th>Mensaje</th>
                <th>Categoría</th>
                <th>Fecha Recepción</th>
                <th>Emitida Por</th>                
            </tr>
        </thead>
        <tfoot>        
        </tbody>
    </table>
</div>
</body>
</html>
