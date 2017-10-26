<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Data Manipulation Scenario - jsGrid Demo</title>
<link href="static/css_acc/reset.min.css" rel="stylesheet" type="text/css" />
<link href="static/css_acc/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="static/css_acc/style_acc.css">
<link href="static/js/lib/form/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<script src="static/js/lib/form/jquery.validate.js"></script>
<script src="static/js/lib/form/bootstrap.min.js"></script>
<script src="static/js/lib/form/additional-methods.js"></script>
<script src="static/js/app/dictaminador/solicitud.js"></script>
<link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" />


    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400' rel='stylesheet' type='text/css'>
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.min.css" />
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid-theme.min.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/cupertino/jquery-ui.css">
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
    




<table style="background-color:rgba(0, 0, 0, 0.13);">
	<tr>
		<td width="20%" align="center">
			<img src="static/img/request_surgery.png" width="20%" />
		</td>
		<td>
		<font size="4">Dictaminar Cirugia Programada</font>
		<div id="idSolDiv">
			<c:if test="${idSolicitud!=null}">
				Folio de la solicitud:<input type="hidden" id="idSolicitud" name="idSolicitud" value="<c:out value="${idSolicitud}"/>"/>
				<c:out value="${idSolicitud}"/>
			</c:if>
			<c:if test="${idSolicitud==null}">
				<input type="hidden" id="idSolicitud" name="idSolicitud"/>				
			</c:if>
		</div>
		</td>
	</tr>
</table>
<h4><img src="static/img/benef.png" width="25px" />Datos del Beneficiario</h4>
<table>
	<tr>
		<td><div id="divDatosBeneficiario"></div></td>
	</tr>
	<tr>
		<td><div id="divDatosEmpresaBeneficiario"></div></td>
	</tr>
</table>			
<h4><img src="static/img/schedule.png" width="25px" />Programación</h4>
<jsp:include page="secciones/sec_programacion.jsp"></jsp:include>
<h4><img src="static/img/documents.png" width="25px" />Documentación</h4>	
<jsp:include page="secciones/sec_documentacion.jsp"></jsp:include>	
<h4><img src="static/img/person.png" width="25px" />Riesgos y Personal Requerido Adicional</h4>
<jsp:include page="secciones/sec_riesgos_personal.jsp"></jsp:include>	
<h4><img src="static/img/surgery.png" width="25px" />Datos de la cirugía</h4>
<jsp:include page="secciones/sec_cirugia_grid.jsp"></jsp:include>
<h4><img src="static/img/supplies.jpg" width="25px" height="35px" />Presupuesto de Insumos</h4>
<jsp:include page="secciones/sec_insumos.jsp"></jsp:include>
	
<div>	
	<button type="submit" class="btn btn-primary">Finalizar Dictamen</button>	
</div>			