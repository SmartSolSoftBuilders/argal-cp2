<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="static/css_acc/reset.min.css" rel="stylesheet" type="text/css" />
<link href="static/css_acc/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="static/css_acc/style_acc.css">
<link href="static/js/lib/form/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<script src="static/js/lib/form/jquery.validate.js"></script>
<script src="static/js/lib/form/bootstrap.min.js"></script>
<script src="static/js/lib/form/additional-methods.js"></script>
<script src="static/js/app/solicitud/solicitud.js"></script>
<link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" />
<style>
	button.accordion {
	    background-color: #eee;
	    color: #444;
	    cursor: pointer;
	    padding: 18px;
	    width: 100%;
	    border: none;
	    text-align: left;
	    outline: none;
	    font-size: 15px;
	    transition: 0.4s;
	    height: 7%;
	    /**/
	}
	
	button.accordion.active, button.accordion:hover {
	    background-color: #8bb9b2;
	    color:white;
	}
	
	button.accordion:after {
	    content: '\002B';
	    color: #777;
	    font-weight: bold;
	    float: right;
	    margin-left: 5px;
	}
	
	button.accordion.active:after {
	    content: "\2212";
	}
	
	div.panel {
	    padding: 0 18px;
	    background-color: white;
	    max-height: 0;
	    overflow: hidden;
	    transition: max-height 0.2s ease-out;
	}
</style>
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
<button class="accordion"><img src="static/img/benef.png" width="25px" />1) Registro del Beneficiario</button>
<div class="panel" id="panel1" style="height:800px;">
	<jsp:include page="secciones/sec_beneficiario.jsp"></jsp:include>	
</div>		

<button class="accordion"><img src="static/img/surgery.png" width="25px" />2) Datos de la cirugía</button>
<div class="panel" id="panel2">
	<jsp:include page="secciones/sec_cirugia.jsp"></jsp:include>	
</div>						

<button class="accordion"><img src="static/img/schedule.png" width="25px" />3)Programación</button>			
<div class="panel" id="panel3">
	<jsp:include page="secciones/sec_programacion.jsp"></jsp:include>
	<table width="1200px">
		<tr>						
			<td><button type="submit" ><img src="static/img/save.png" width="50px" /></button></td>
			<td><button type="button" onclick="nextTab(1)" style="background-color: #25726D;"><img src="static/img/continuar.png" width="90px" /></button></td>
		</tr>
	</table>
</div>
	
<button class="accordion"><img src="static/img/documents.png" width="25px" />4)Documentación</button>
<div class="panel" id="panel4">
		<jsp:include page="secciones/sec_documentacion.jsp"></jsp:include>
	<table width="1200px">
		<tr>						
			<td><button type="submit" ><img src="static/img/save.png" width="50px" /></button></td>
			<td><button type="button" onclick="nextTab(1)" style="background-color: #25726D;"><img src="static/img/continuar.png" width="90px" /></button></td>
		</tr>
	</table>
</div>
	
<button class="accordion"><img src="static/img/person.png" width="25px" />5)Riesgos y Personal Requerido Adicional</button>
<div class="panel" id="panel5">
	<jsp:include page="secciones/sec_riesgos_personal.jsp"></jsp:include>
	<table width="1200px">
		<tr>						
			<td><button type="submit" ><img src="static/img/save.png" width="50px" /></button></td>
			<td><button type="button" onclick="nextTab(1)" style="background-color: #25726D;"><img src="static/img/continuar.png" width="90px" /></button></td>
		</tr>
	</table>
</div>

<button class="accordion"><img src="static/img/person.png" width="25px" />6)Insumos</button>
<div class="panel" id="panel5">
	<div id="jsGrid"></div>	
	<table width="1200px">
		<tr>						
			<td><button type="submit" ><img src="static/img/save.png" width="50px" /></button></td>
			<td><button type="button" onclick="nextTab(1)" style="background-color: #25726D;"><img src="static/img/continuar.png" width="90px" /></button></td>
		</tr>
	</table>
</div>
	
<script>
var acc = document.getElementsByClassName("accordion");
var i;
var numPaneles=5;
for (i = 0; i < acc.length; i++) {
	  acc[i].onclick = function() {
	    this.classList.toggle("active");	    
	    var panel = this.nextElementSibling;
	    console.log(panel)
	    idActual=panel.id;
	    if (panel.style.maxHeight){
	      panel.style.maxHeight = null;
	    } else {
	      panel.style.maxHeight = panel.scrollHeight + "px";
	    }	 
	    //document.getElementById(""+idActual).style.display = "block";	   
	}
}
</script>