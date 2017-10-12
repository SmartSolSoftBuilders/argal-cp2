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
	<title>ARGAL-HSCS</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="../../static/js/v2.0/app/evento/AltaEvento.js?version=2"></script>	
	<script src="../../static/js/v2.0/app/medico_tratante/Medico_Tratante.js?version=2"></script>	
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
			  	<h5><img src="../../static/img/v2.0/img/escribir_evento.png" height="30" width="30" id="imgAltaEvento" name="imgAltaEvento"/>REGISTRAR EVENTO</h5>
			    <form id="altaeventoform" name="altaeventoform" class="register f1" method="post">
			    	<fieldset class="row1">
			    	<legend>1) DATOS GENERALES DEL INGRESO
                	</legend>                      		          
		                <p>
		                    <label>HOSPITAL:
		                    </label>		                    
		                    <input maxlength="100" type="text" id="nombreHospital" name="nombreHospital" data-validation="required" onclick="showGridHospitales()" style="cursor: pointer;width: 200px;" readonly/>
		                    <input type="hidden" id="idHospital" name="idHospital" data-validation="required"/>
							<img src="../../static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridHospitales()" id="imgLoadHosp">		                    
		                    <label>TIPO DE CLIENTE:
		                    </label>
		                    <select style="width:140px;" id="tipoCliente" name="tipoCliente" data-validation="required">   									
								<option value="">Seleccione...</option>
								<option value="1">BANCO</option>								
							</select>
		                    <label>ID HOSPITALARIO:
		                    </label>
		                    <input maxlength="50" type="text" id="idHospitalario" name="idHospitalario" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                </p>
        				<p>
		                    <label>FOLIO ARGAL:
		                    </label>
		                    <input maxlength="50" type="text" id="folioArgal" name="folioArgal" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>		                
		                    <label>CLIENTE:
		                    </label>
		                    <select id="clienteSel" name="clienteSel" style="width:180px;" data-validation="required">   									
								<option value="">Seleccione...</option>
							</select>
		                    <label>TIPO DE EVENTO:
		                    </label>
		                    <select id="tipoEventoSel" name="tipoEventoSel" style="width:180px;" onchange="showFormNacimiento()" data-validation="required">   									
								<option value="">Seleccione...</option>
								<option value="1">CORTA ESTANCIA</option>
								<option value="2">PROGRAMADA</option>
								<option value="3">URGENCIA</option>
								<option value="4">NACIMIENTO</option>
								<option value="5">URGENCIA 2 HRS Ó MÁS</option>
								<option value="6">URGENCIA MENOS DE 2 HRS</option>
							</select>
					</p>
        			<p>
		                    <label>FECHA INGRESO:
		                    </label>
		                    <!--  input type="date" id="fechaIngreso" min='1899-01-01' readonly max='2000-13-13' name="fechaIngreso" data-validation="required" /-->
		                    <input type="text" id="fechaIngreso" data-validation="required" readonly/>
		                    <label>HORA INGRESO:
		                    </label>
		                    <input type="time" id="horaIngreso" data-validation="required"/>
		             </p>
		            </fieldset>
		            <fieldset class="row1">
			    	<legend>2) DATOS DEL PACIENTE (BANCO)
                	</legend>
                		<p>
		                <h4>DATOS DEL TITULAR</h4>
		                </p>                	                	                
		                <p>
		                    <label>NO. NÓMINA:
		                    </label>		                    
		                    <input maxlength="100" type="text" id="numeroNomina" name="numeroNomina" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>									                   
		                    <label>NO. AUTORIZACIÓN:
		                    </label>
		                    <input maxlength="50" type="text" id="numeroAutorizacion" name="numeroAutorizacion" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>		                
		                    <label>CONDICIÓN DEL ASEGURADO:
		                    </label>
		                    <select style="width:140px;" id="condicionAsegSel" name="condicionAsegSel" data-validation="required">   									
								<option value="">Seleccione...</option>
								<option>ACTIVO</option>
								<option>JUBILADO</option>
								<option>EX-EMPLEADO</option>
							</select>
		                    <label>CENSO:
		                    </label>
		                    <select style="width:140px;" id="censoSel" name="censoSel" data-validation="required">   									
								<option value="">Seleccione...</option>
								<option>SI</option>
								<option>NO</option>
							</select>
		                </p>
		                <p>
		                    <label>NOMBRE:
		                    </label>
		                    <input maxlength="100" type="text" id="nombreTitular" name="nombreTitular" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                    <label>APELLIDO PATERNO:
		                    </label>
		                    <input maxlength="100" type="text" id="appTitular" name="appTitular" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                   	<label>APELLIDO MATERNO:
		                    </label>
		                    <input maxlength="100" type="text" id="apmTitular" name="apmTitular" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                </p>
		                <p>
		      	        <div id="formPacienteNormal" name="formPacienteNormal" >
		                <h4>DATOS DEL PACIENTE</h4>
		                </p>                    		                		
		                <p>
		                    <label>NOMBRE:
		                    </label>
		                    <input maxlength="100" type="text" id="nombrePaciente" name="nombrePaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                    <label>APELLIDO PATERNO:
		                    </label>
		                    <input maxlength="100" type="text" id="appPaciente" name="appPaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                   	<label>APELLIDO MATERNO:
		                    </label>
		                    <input maxlength="100" type="text" id="apmPaciente" name="apmPaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                </p>		                            			               
		                <p>
		                	<label>EDAD:
		                    </label>
		                    <input maxlength="5"type="text" id="edadPaciente" name="edadPaciente" data-validation="evento_normal number" onkeyup="javascript:this.value=this.value.toUpperCase();" data-validation-error-msg="Solo números"/>
		                    <label>UNIDAD:
		                    </label>
		                    <select style="width:140px;" id="unidadPaciente" name="unidadPaciente" data-validation="evento_normal">					
								<option value="">Seleccione...</option>
								<option>AÑOS</option>
								<option>MESES</option> 
								<option>DÍAS</option>
							</select>
		                   	<label>SEXO:
		                    </label>
		                    <select style="width:140px;" id="sexoPaciente" name="sexoPaciente" data-validation="evento_normal">   									
								<option value="">Seleccione...</option>
								<option>MASCULINO</option>
								<option>FEMENINO</option>
							</select>
							<label>PARENTESCO:
		                    </label>
		                    <select style="width:140px;" id="parentescoPaciente" name="parentescoPaciente" data-validation="evento_normal">   									
								<option value="">Seleccione...</option>
								<option>TITULAR</option>
								<option>HIJA</option>
								<option>HIJO</option>
								<option>CONYUGE</option>
								<option>MADRE</option>
								<option>PADRE</option>
							</select>
		                </p>
		              </div>
		              <div id="formNac" name="formNac" style="display:none;">
		               	<p>
		                <h4>DATOS DEL RECIEN NACIDO</h4>
		                </p>		                            			               
		                <p>		                	
		                   	<label>SEXO:
		                    </label>
		                    <select style="width:140px;" id="sexoRN" name="sexoRN"  data-validation="evento_nacimiento">   									
								<option value="">Seleccione...</option>
								<option>MASCULINO</option>
								<option>FEMENINO</option>
							</select>
							<label>PARENTESCO:
		                    </label>
		                    <select style="width:140px;" id="parentescoRN" name="parentescoRN" data-validation="evento_nacimiento">   									
								<option value="">Seleccione...</option>
								<option>TITULAR</option>
								<option>HIJA</option>
								<option>HIJO</option>
								<option>CONYUGE</option>
								<option>MADRE</option>
								<option>PADRE</option>
							</select>
		                 </p>
		                 <p>
		                    <label>NOMBRE RECIEN NACIDO:
		                    </label>
		                    <input maxlength="100" type="text" id="nombreRN" name="nombreRN" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                    <label>APELLIDO PATERNO:
		                    </label>
		                    <input maxlength="50" type="text" id="apRN" name="apRN" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                   	<label>APELLIDO MATERNO:
		                    </label>
		                    <input maxlength="50" type="text" id="amRN" name="amRN" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                 </p>		              
		                 <p>
		                 	<label>FECHA NACIMIENTO:
		                    </label>
		                    <!--  input type="date" id="fechaNacimiento" data-validation="evento_nacimiento"/-->
		                    <input type="date" id="fechaNacimiento" name="fechaNacimiento" data-validation="evento_nacimiento" />
		                    <label>HORA NACIMIENTO:
		                    </label>
		                    <input type="time" id="horaNacimiento" data-validation="evento_nacimiento" />
		                    <label>TIPO PARTO:
		                    </label>
		                    <select style="width:140px;" id="tipoParto" name="tipoParto" data-validation="evento_nacimiento">   									
								<option value="">Seleccione...</option>
								<option>NATURAL</option>
								<option>CESÁREA</option>								
							</select>
							<label>TALLA:
		                    </label>
		                    <input maxlength="5" type="text" id="talla" name="talla" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>		                    
		                 </p>
		                 <p>
		                 	<label>PESO:
		                    </label>
		                    <input maxlength="5" type="text" id="peso" name="peso" data-validation="evento_nacimiento number" data-validation-allowing="float" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                    <label>APGAR:
		                    </label>
		                    <input maxlength="5" type="text" id="apgar" name="apgar" data-validation="evento_nacimiento"/>
		                    <label>MÉDICO:
		                    </label>
		                    <input type="text" id="medicoNacimiento" name="medicoNacimiento" onclick="showGridMedicos(2)" data-validation="evento_nacimiento">
		                    <input type="hidden" id="idMedicoNacimiento" name="idMedicoNacimiento" data-validation="evento_nacimiento">
							<img src="../../static/img/v2.0/img/buscar.jpg"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridMedicos(2)">
		                 </p>
		                </div>   
		            </fieldset>
		            <fieldset class="row1">
			    	<legend>3) DATOS DE INGRESO HOSPITALARIO
                	</legend>	
                		<p>
		                	<label>NÚMERO HABITACIÓN:
		                    </label>
		                    <input maxlength="5" type="text" id="numeroHabitacion" name="numeroHabitacion" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
		                    <label>ANTECENTES PERSONALES PATOLÓGICOS:
		                    </label>
		                    <select style="width:140px;" id="antecedentesSel" name="antecedentesSel" data-validation="required">
								<option value="">Seleccione...</option>
							</select>
							<label>MÉDICO DICTAMINADOR:
		                    </label>		                    
		                    <select style="width:140px;" id="medicoDictaminadorSel" name="medicoDictaminadorSel" data-validation="required">   									
								<option value="">Seleccione...</option>															
							</select>   											                    						
						</p>
						<p>
		                   	<label>DIAGNÓSTICO DE INGRESO 1:
		                    </label>
		                    <input type="text" id="icd1" name="icd1" onclick="showGridIcd(1)" data-validation="required" readonly>
		                    <input type="hidden" id="idIcd1" name="idIcd1" data-validation="required">
							<img src="../../static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(1)">		                    
							<label>DIAGNÓSTICO DE INGRESO 2:
		                    </label>
		                    <input type="text" id="icd2" name="icd2" onclick="showGridIcd(2)" readonly>
		                    <input type="hidden" id="idIcd2" name="idIcd2" >
							<img src="../../static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(2)">							
							<div align="center"><button type="submit" id="buttonGuardarEvento" class="myButton">Guardar</button><font color="white">___</font><button type="button" onclick="cancelarAltaEvento();" class="myButton">Cancelar</button></div>							
						</p>
						<p>
							<label>MÉDICO TRATANTE:
		                    </label>
		                    <input type="text" id="medicoTratante" name="medicoTratante" onclick="showGridMedicos(1)" data-validation="required" readonly>
		                    <input type="hidden" id="idMedicoTratante" name="idMedicoTratante" data-validation="required">
							<img src="../../static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridMedicos(1)">
							<label>ESPECIALIDAD:
		                    </label>
		                    <div id="especialidad" name="especialidad"></div>		                    		                   
		                </p>		                		               
		            </fieldset>	
				</form>
				<div id="divGridHospitales" title="Seleccione un Hospital" style="display: none" align="center">					
					<jsp:include page="../hospitales/grid_hospitales.jsp" />
				</div>
				<div id="divGridMedicosNac" title="Seleccione un Médico" style="display: none" align="center">					
					<!--  jsp:include page="../medicos/grid_medicos.jsp" /-->
					<table id="tablaGridMedicosNac" class="display" cellspacing="0" width="100%">
						<thead>
						     <tr>   
						         <th>Nombre</th>
								 <th>Tipo</th>
								 <th>Especialidades</th>                  				                				              
						         <th>Seleccionar</th>
						     </tr>
						</thead>
						<tbody>
						</tbody>
						</table>
				</div>
				<div id="divMedicoTratante" title="Seleccione un Médico" style="display: none" align="center">					
					<jsp:include page="../medicos/grid_medicos.jsp" />
				</div>  			  			  		
				<!--  div id="agregarMedTrEvento" title="Seleccione un Médico" style="display: none" align="center">					
					<jsp:include page="../catalogos/alta_medico_tratante.jsp" />
				</div-->  			  			  							   
				<div id="divIcds" title="Seleccione un Diagnóstico de Ingreso" style="display: none" align="center">					
					<jsp:include page="../icd/grid_icds.jsp" />
				</div>
				<div id="divAgregarMedicoTratante2" title="Agregar Médico Tratante" style="display: none" align="center">					
					<jsp:include page="alta_medico_tratante.jsp" />
				</div>
				<div id="dialog-message" title="Guardar Evento" style="display: none" align="center">					
					<div id="mensajeGuardar"></div>					
				</div>
			  </div>			  			
			</section>
			<aside id="pageAside"></aside>
		</div>
		<footer id="pageFooter"></footer>
	</div>
</body>
</html>