<h5><img src="static/img/v2.0/img/escribir_evento.png" height="30" width="30" id="imgAltaEvento" name="imgAltaEvento"/>-EDITAR DATOS DEL EVENTO-</h5>
<input type="hidden" id="idEventoHid" name="idEventoHid"/>
<input type="hidden" id="idRegSegPersHid" name="idRegSegPersHid"/>			  	
    <form id="altaeventoform" name="altaeventoform" class="register" method="post">
    	<fieldset class="row1">
    	<legend>1) DATOS GENERALES DEL INGRESO
       	</legend>                      		          
		<p>
        	<label>HOSPITAL:
            </label>		                    
            <input maxlength="100" type="text" id="nombreHospital" name="nombreHospital" data-validation="required" onclick="showGridHospitales()" style="cursor: pointer;width: 200px;" readonly/>
            <input type="hidden" id="idHospital" name="idHospital" data-validation="required"/>
			<img src="static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer; " height="25" width="25" onclick="showGridHospitales()" id="imgLoadHosp">		                    
            <label>TIPO DE CLIENTE:
            </label>
            <select style="width:140px;" id="tipoCliente" name="tipoCliente" data-validation="required">   									
				<option value="">Seleccione...</option>
				<option value="1">BANCO</option>								
			</select>
            <label>ID HOSPITALARIO:
            </label>
            <input maxlength="25" type="text" id="idHospitalario" name="idHospitalario" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
        </p>
        <p>
            <label>FOLIO ARGAL:
            </label>
            <input maxlength="25" type="text" id="folioArgal" name="folioArgal" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>        
          	<label>CLIENTE:
            </label>
            <select id="clienteSel" name="clienteSel" style="width:140px;" data-validation="required">   									
				<option value="">Seleccione...</option>
			</select>
            <label>TIPO DE EVENTO:
            </label>
            <select id="tipoEventoSel" name="tipoEventoSel" style="width:140px;" onchange="showFormNacimiento()" data-validation="required">   									
				<option value="">Seleccione...</option>
				<option value="1">CORTA ESTANCIA</option>
				<option value="2">PROGRAMADA</option>
				<option value="3">URGENCIA</option>
				<option value="4">NACIMIENTO</option>
				<option value="5">URGENCIA 2 HRS � M�S</option>
				<option value="6">URGENCIA MENOS DE 2 HRS</option>
			</select>
        </p>
        <p>   
            <label>FECHA INGRESO:
            </label>
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
               <h5>DATOS DEL TITULAR</h5>
               </p>                	                	                
               <p>
                   <label>NO. N�MINA:
                   </label>		                    
                   <input maxlength="30" type="text" id="numeroNomina" name="numeroNomina" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>									                   
                   <label>NO. AUTORIZACI�N:
                   </label>
                   <input maxlength="25" type="text" id="numeroAutorizacion" name="numeroAutorizacion" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>		                
                   <label>CONDICI�N DEL ASEGURADO:
                   </label>
                   <select style="width:100px;" id="condicionAsegSel" name="condicionAsegSel" data-validation="required">   									
					<option value="">Seleccione...</option>
					<option>ACTIVO</option>
					<option>JUBILADO</option>
					<option>EX-EMPLEADO</option>
				</select>
                   <label>CENSO:
                   </label>
                   <select style="width:100px;" id="censoSel" name="censoSel" data-validation="required">   									
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
                   <input maxlength="50" type="text" id="appTitular" name="appTitular" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                  	<label>APELLIDO MATERNO:
                   </label>
                   <input maxlength="50" type="text" id="apmTitular" name="apmTitular" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
               </p>
               <p>
             <div id="formPacienteNormal" name="formPacienteNormal" >
               <h5>DATOS DEL PACIENTE</h5>
               </p>                    		                		
               <p>
                   <label>NOMBRE:
                   </label>
                   <input maxlength="100" type="text" id="nombrePaciente" name="nombrePaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                   <label>APELLIDO PATERNO:
                   </label>
                   <input maxlength="50" type="text" id="appPaciente" name="appPaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                  	<label>APELLIDO MATERNO:
                   </label>
                   <input maxlength="50" type="text" id="apmPaciente" name="apmPaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
               </p>		                            			               
               <p>
               	<label>EDAD:
                   </label>
                   <input maxlength="5" type="text" id="edadPaciente" name="edadPaciente" data-validation="evento_normal number" onkeyup="javascript:this.value=this.value.toUpperCase();" data-validation-error-msg="Solo n�meros"/>
                   <label>UNIDAD:
                   </label>
                   <select style="width:140px;" id="unidadPaciente" name="unidadPaciente" data-validation="evento_normal">					
					<option value="">Seleccione...</option>
					<option value="A�OS">A�OS</option>
					<option value="MESES">MESES</option> 
					<option value="D�AS">D�AS</option>
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
               <h5>DATOS DEL RECIEN NACIDO</h5>
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
                   <input type="text" id="fechaNacimiento" data-validation="evento_nacimiento" readonly onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                   <label>HORA NACIMIENTO:
                   </label>
                   <input type="time" id="horaNacimiento" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                   <label>TIPO PARTO:
                   </label>
                   <select style="width:140px;" id="tipoParto" name="tipoParto" data-validation="evento_nacimiento">   									
					<option value="">Seleccione...</option>
					<option>NATURAL</option>
					<option>CES�REA</option>								
				</select>
				<label>TALLA:
                   </label>
                   <input maxlength="5" type="text" id="talla" name="talla" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>		                    
                </p>
                <p>
                	<label>PESO:
                   </label>
                   <input maxlength="5" type="text" id="peso" name="peso" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                   <label>APGAR:
                   </label>
                   <input maxlength="25" type="text" id="apgar" name="apgar" data-validation="evento_nacimiento"/>
                   <label>M�DICO:
                   </label>
                   <input type="text" id="medicoNacimiento" name="medicoNacimiento" onclick="showGridMedicos(2)" data-validation="evento_nacimiento">
                   <input type="hidden" id="idMedicoNacimiento" name="idMedicoNacimiento" data-validation="evento_nacimiento">
				<img src="static/img/v2.0/img/buscar.jpg"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridMedicos(2)">
                </p>
               </div>   
           </fieldset>
           <fieldset class="row1">
    			<legend>3) DATOS DE INGRESO HOSPITALARIO
             	</legend>	
             		<p>
               	<label>N�MERO HABITACI�N:
                   </label>
                   <input maxlength="5" type="text" id="numeroHabitacion" name="numeroHabitacion" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                   <label>ANTECENTES PERSONALES PATOL�GICOS:
                   </label>
                   <select style="width:140px;" id="antecedentesSel" name="antecedentesSel" data-validation="required">
					<option value="">Seleccione...</option>
				</select>
				<label>M�DICO DICTAMINADOR:
                   </label>		                    
                   <select style="width:140px;" id="medicoDictaminadorSel" name="medicoDictaminadorSel" data-validation="required">   									
					<option value="">Seleccione...</option>															
				</select>   											                    						
			</p>
			<p>
                  	<label>DIAGN�STICO DE INGRESO 1:
                   </label>
                   <input type="text" id="icd1" name="icd1" onclick="showGridIcd(1)" data-validation="required" readonly>
                   <input type="hidden" id="idIcd1" name="idIcd1" data-validation="required">
				<img src="static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer; " height="25" width="25" onclick="showGridIcd(1)">		                    
				<label>DIAGN�STICO DE INGRESO 2:
                   </label>
                   <input type="text" id="icd2" name="icd2" onclick="showGridIcd(2)" readonly>
                   <input type="hidden" id="idIcd2" name="idIcd2" >
				<img src="static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer;" height="25" width="25" onclick="showGridIcd(2)">																	
			</p>
			<p>
				<label>M�DICO TRATANTE:
                   </label>
                   <input type="text" id="medicoTratante" name="medicoTratante" onclick="showGridMedicos(1)" data-validation="required" readonly>
                   <input type="hidden" id="idMedicoTratante" name="idMedicoTratante" data-validation="required">
				<img src="static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer;" height="25" width="25" onclick="showGridMedicos(1)">
				<label>ESPECIALIDAD:
                   </label>
                   <div id="especialidad" name="especialidad"></div>		                    		                   
            </p>
            <p>
            	<div align="center"><button type="submit" id="buttonGuardarEvento" class="myButton">Guardar</button><font color="white">___</font><button type="button"  class="myButton" onclick="cerrarVentanaEditar();">Cancelar</button></div>
            </p>		                		               
               
           </fieldset>	
	</form>
	<div id="divGridHospitales" title="Seleccione un Hospital" style="display: none" align="center">					
		<jsp:include page="../hospitales/grid_hospitales.jsp" />
	</div>
	<div id="divGridMedicosNac" title="Seleccione un M�dico" style="display: none" align="center">					
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
	<div id="divMedicoTratante" title="Seleccione un M�dico" style="display: none" align="center">					
			<jsp:include page="../medicos/grid_medicos.jsp" />
	</div>  			  			  			    
	<div id="divIcds" title="Seleccione un Diagn�stico de Ingreso" style="display: none" align="center">					
		<jsp:include page="../icd/grid_icds.jsp" />
	</div>
	<div id="dialog-message" title="Guardar Evento" style="display: none" align="center">					
		<div id="mensajeGuardar"></div>					
	</div>
	<div id="divAgregarMedicoTratante3" title="Agregar M�dico Tratante" style="display: none" align="center">					
					<jsp:include page="alta_medico_tratante.jsp" />
				</div>
	</div>			  			
</section>
<aside id="pageAside"></aside>
</div>
	<footer id="pageFooter"></footer>
</div>
