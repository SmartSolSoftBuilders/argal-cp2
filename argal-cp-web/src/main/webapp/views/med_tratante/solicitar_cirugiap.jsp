<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="static/css_acc/reset.min.css" rel="stylesheet" type="text/css" />
<link href="static/css_acc/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="static/css_acc/style_acc.css">
<link href="static/js/lib/form/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<script src="static/js/lib/form/jquery.validate.js"></script>
<script src="static/js/lib/form/bootstrap.min.js"></script>
<script src="static/js/lib/form/additional-methods.js"></script>
<script src="static/js/app/solicitud/solicitud.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" />
<div id="loading">
	<img src="static/img/loading1.gif" width="20%" />
</div>
<div id="contenidoSolicitud" style="display:none">
	<table style="background-color:rgba(30, 162, 136, 0.13);">
		<tr>
			<td width="20%" align="center">
				<img src="static/img/request_surgery.png" width="20%" />
			</td>
			<td>
			<font size="4">Solicitar una Cirugia Programada. </font><font size="2">Por favor llene cada sección de la información solicitada.
			Puede llenar una sección y guardarla para enviarla después</font>
			<div id="idSolDiv">
				<c:if test="${idSolicitud!=null}">
					<input type="hidden" id="idSolicitud" name="idSolicitud" value="<c:out value="${idSolicitud}"/>"/>
					<c:out value="${idSolicitud}"/>
				</c:if>
				<c:if test="${idSolicitud==null}">
					<input type="hidden" id="idSolicitud" name="idSolicitud"/>				
				</c:if>
			</div>
				<c:if test="${cirugiaSolicitada1.idCirugiaSolicitada!=null}">
					<input type="hidden" id="idCirugiaSolicitada1" name="idCirugiaSolicitada1" value="<c:out value="${cirugiaSolicitada1.idCirugiaSolicitada}"/>"/>
					<c:out value="${cirugiaSolicitada1.idCirugiaSolicitada}"/>
				</c:if>
				<c:if test="${cirugiaSolicitada1.idCirugiaSolicitada ==null}">
					<input type="hidden" id="idCirugiaSolicitada1" name="idCirugiaSolicitada1"/>				
				</c:if>
				<c:if test="${cirugiaSolicitada2.idCirugiaSolicitada!=null}">
					<input type="hidden" id="idCirugiaSolicitada2" name="idCirugiaSolicitada2" value="<c:out value="${cirugiaSolicitada2.idCirugiaSolicitada}"/>"/>
					<c:out value="${cirugiaSolicitada2.idCirugiaSolicitada}"/>
				</c:if>
				<c:if test="${cirugiaSolicitada2.idCirugiaSolicitada ==null}">
					<input type="hidden" id="idCirugiaSolicitada2" name="idCirugiaSolicitada2"/>				
				</c:if>		
			</td>
		</tr>
	</table>	
	
	<div id="accordionSolicitud" style="width:97%;">
		<h3><img src="static/img/benef.png" width="25px" />1) Registro del Paciente</h3>
		 <div>	   
			<jsp:include page="secciones/sec_beneficiario.jsp"></jsp:include>			
		</div>		
			
		<h3><img src="static/img/surgery.png" width="25px" />2) Datos de la cirugía</h3>
		<div>	    		
			<jsp:include page="secciones/sec_cirugia.jsp"></jsp:include>			
		</div>				
		
		<h3><img src="static/img/schedule.png" width="25px" />3)Programación</h3>
		<div>
			<jsp:include page="secciones/sec_programacion.jsp"></jsp:include>				
		</div>
			
		<h3><img src="static/img/documents.png" width="25px" />4)Documentación</h3>
		<div>	   
			<jsp:include page="secciones/sec_documentacion.jsp"></jsp:include>				
		</div>	
		
		<h3><img src="static/img/person.png" width="25px" />5)Riesgos y Personal Adicional Requerido</h3>
		<div>	    
			<jsp:include page="secciones/sec_riesgos_personal.jsp"></jsp:include>				
		</div>
		
		<h3><img src="static/img/insumo.png" width="25px" />6)Insumos</h3>
		<div>	   			
			<div id="jsGridInsumos"></div>								
		</div>
		<h3 id = "enviarSolicitudForm"><img src="static/img/send.png" width="25px" />7)Enviar Solicitud de Cirugía Programada</h3>
		<div>	   			
			<jsp:include page="secciones/sec_solicitud_completa.jsp"></jsp:include>								
		</div>	
	</div>
</div>

<div id="dialog-mensaje" title="Aviso" style="display:none;">
  <p>
    <span class="ui-icon ui-icon-circle-check" style="float:left; margin:0 7px 50px 0;"></span>
    <div id="mensajeDialogo"></div>
  </p>
</div>