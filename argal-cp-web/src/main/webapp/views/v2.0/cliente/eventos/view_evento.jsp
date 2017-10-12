			    <form name="editareventoform" class="form-container2">
			    	<fieldset class="row1">
			    	<legend>1) DATOS GENERALES DEL INGRESO
                	</legend>                	
		                <p>
		                     <label><font color="white"><font color="white">HOSPITAL:</font>
		                    </label>		                    
		                    <input type="text" id="hospital" readonly/>									                   
		                     <label><font color="white">TIPO DE CLIENTE:</font>
		                    </label>
		                    <input type="text" value="BANCO" readonly/>
		                     <label><font color="white">ID HOSPITALARIO:</font>
		                    </label>
		                    <input maxlength="25" type="text" id="idHospitalario" name="idHospitalario" readonly/>
		                </p>
		                <p>  
		                     <label><font color="white">FOLIO ARGAL:</font>
		                    </label>
		                    <input maxlength="25" type="text" id="folioArgal" name="folioArgal" readonly/>		                
		                     <label><font color="white">CLIENTE:</font>
		                    </label>
		                    <input type="text" id="cliente"  readonly/>
		                     <label><font color="white">TIPO DE EVENTO:</font>
		                    </label>
		                    <input type="text" id="tipoEvento"  readonly/>
		                 </p>
		                 <p>
		                     <label><font color="white">FECHA INGRESO:</font>
		                    </label>
		                    <input type="text" id="fechaIngreso" readonly/>
		                     <label><font color="white">HORA INGRESO:</font>
		                    </label>
		                    <input type="text" id="horaIngreso" readonly/>
		                </p>
		            </fieldset>
		            <fieldset class="row1">
    	<legend>2) DATOS DEL PACIENTE (BANCO)
             	</legend>
             		<p>
               <h5>DATOS DEL TITULAR</h5>
               </p>                	                	                
               <p>
                    <label><font color="white">NO. NÓMINA:</font>
                   </label>		                    
                   <input maxlength="30" type="text" id="numeroNomina" name="numeroNomina" readonly onkeyup="javascript:this.value=this.value.toUpperCase();"/>									                   
                    <label><font color="white">NO. AUTORIZACIÓN:</font>
                   </label>
                   <input maxlength="25" type="text" id="numeroAutorizacion" name="numeroAutorizacion" readonly onkeyup="javascript:this.value=this.value.toUpperCase();"/>		                
                    <label><font color="white">CONDICIÓN DEL ASEGURADO:</font>
                   </label>
                   <select style="width:100px;" id="condicionAsegSel" name="condicionAsegSel" readonly>   									
					<option value="">Seleccione...</option>
					<option>ACTIVO</option>
					<option>JUBILADO</option>
					<option>EX-EMPLEADO</option>
				</select>
                    <label><font color="white">CENSO:</font>
                   </label>
                   <select style="width:100px;" id="censoSel" name="censoSel" readonly>   									
					<option value="">Seleccione...</option>
					<option>SI</option>
					<option>NO</option>
				</select>
               </p>
               <p>
                    <label><font color="white">NOMBRE:</font>
                   </label>
                   <input maxlength="100" type="text" id="nombreTitular" name="nombreTitular" readonly onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                    <label><font color="white">APELLIDO PATERNO:</font>
                   </label>
                   <input maxlength="50" type="text" id="appTitular" name="appTitular" readonly onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                  	 <label><font color="white">APELLIDO MATERNO:</font>
                   </label>
                   <input maxlength="50" type="text" id="apmTitular" name="apmTitular" readonly onkeyup="javascript:this.value=this.value.toUpperCase();"/>
               </p>
               <p>
             <div id="formPacienteNormal" name="formPacienteNormal" >
               <h5>DATOS DEL PACIENTE</h5>
               </p>                    		                		
               <p>
                    <label><font color="white">NOMBRE:</font>
                   </label>
                   <input maxlength="100" type="text" id="nombrePaciente" name="nombrePaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                    <label><font color="white">APELLIDO PATERNO:</font>
                   </label>
                   <input maxlength="50" type="text" id="appPaciente" name="appPaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                  	 <label><font color="white">APELLIDO MATERNO:</font>
                   </label>
                   <input maxlength="50" type="text" id="apmPaciente" name="apmPaciente" data-validation="evento_normal" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
               </p>		                            			               
               <p>
               	 <label><font color="white">EDAD:</font>
                   </label>
                   <input maxlength="5" type="text" id="edadPaciente" name="edadPaciente" data-validation="evento_normal number" onkeyup="javascript:this.value=this.value.toUpperCase();" data-validation-error-msg="Solo números"/>
                    <label><font color="white">UNIDAD:</font>
                   </label>
                   <select style="width:140px;" id="unidadPaciente" name="unidadPaciente" data-validation="evento_normal">					
					<option value="">Seleccione...</option>
					<option value="AÑOS">AÑOS</option>
					<option value="MESES">MESES</option> 
					<option value="DÍAS">DÍAS</option>
				</select>
                  	 <label><font color="white">SEXO:</font>
                   </label>
                   <select style="width:140px;" id="sexoPaciente" name="sexoPaciente" data-validation="evento_normal">   									
					<option value="">Seleccione...</option>
					<option>MASCULINO</option>
					<option>FEMENINO</option>
				</select>
				 <label><font color="white">PARENTESCO:</font>
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
                  	 <label><font color="white">SEXO:</font>
                   </label>
                   <select style="width:140px;" id="sexoRN" name="sexoRN"  data-validation="evento_nacimiento">   									
					<option value="">Seleccione...</option>
					<option>MASCULINO</option>
					<option>FEMENINO</option>
				</select>
				 <label><font color="white">PARENTESCO:</font>
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
                    <label><font color="white">NOMBRE RECIEN NACIDO:</font>
                   </label>
                   <input maxlength="100" type="text" id="nombreRN" name="nombreRN" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                    <label><font color="white">APELLIDO PATERNO:</font>
                   </label>
                   <input maxlength="50" type="text" id="apRN" name="apRN" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                  	 <label><font color="white">APELLIDO MATERNO:</font>
                   </label>
                   <input maxlength="50" type="text" id="amRN" name="amRN" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                </p>		              
                <p>
                	 <label><font color="white">FECHA NACIMIENTO:</font>
                   </label>
                   <input type="text" id="fechaNacimiento" data-validation="evento_nacimiento" readonly onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                    <label><font color="white">HORA NACIMIENTO:</font>
                   </label>
                   <input type="time" id="horaNacimiento" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                    <label><font color="white">TIPO PARTO:</font>
                   </label>
                   <select style="width:140px;" id="tipoParto" name="tipoParto" data-validation="evento_nacimiento">   									
					<option value="">Seleccione...</option>
					<option>NATURAL</option>
					<option>CESÁREA</option>								
				</select>
				 <label><font color="white">TALLA:</font>
                   </label>
                   <input maxlength="5" type="text" id="talla" name="talla" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>		                    
                </p>
                <p>
                	 <label><font color="white">PESO:</font>
                   </label>
                   <input maxlength="5" type="text" id="peso" name="peso" data-validation="evento_nacimiento" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                    <label><font color="white">APGAR:</font>
                   </label>
                   <input maxlength="25" type="text" id="apgar" name="apgar" data-validation="evento_nacimiento"/>
                    <label><font color="white">MÉDICO:</font>
                   </label>
                   <input type="text" id="medicoNacimiento" name="medicoNacimiento" data-validation="evento_nacimiento">
                   <input type="hidden" id="idMedicoNacimiento" name="idMedicoNacimiento" data-validation="evento_nacimiento">				
                </p>
               </div>   
           </fieldset>
           <fieldset class="row1">
    			<legend>3) DATOS DE INGRESO HOSPITALARIO
             	</legend>	
             		<p>
               	 <label><font color="white">NÚMERO HABITACIÓN:</font>
                   </label>
                   <input maxlength="5" type="text" id="numeroHabitacion" name="numeroHabitacion" readonly onkeyup="javascript:this.value=this.value.toUpperCase();"/>
                    <label><font color="white">ANTECENTES PERSONALES PATOLÓGICOS:</font>
                   </label>
                   <input type="text" id="antecedentesSel" name="antecedentesSel" readonly>
            </p>
            <p>
				 <label><font color="white">MÉDICO DICTAMINADOR:</font>
                   </label>		                    
                   <input type="text" id="medicoDictaminadorSel" name="medicoDictaminadorSel" readonly/>   														   											                    					
			</p>
			<p>
                  	 <label><font color="white">DIAGNÓSTICO DE INGRESO 1:</font>
                   </label>
                   <input type="text" id="icd1" name="icd1" readonly>
                   <input type="hidden" id="idIcd1" name="idIcd1" readonly>						                   
				 <label><font color="white">DIAGNÓSTICO DE INGRESO 2:</font>
                   </label>
                   <input type="text" id="icd2" name="icd2" readonly>
                   <input type="hidden" id="idIcd2" name="idIcd2" >																				
			</p>
			<p>
				 <label><font color="white">MÉDICO TRATANTE:</font>
                   </label>
                   <input type="text" id="medicoTratante" name="medicoTratante" readonly>
                   <input type="hidden" id="idMedicoTratante" name="idMedicoTratante" readonly>				
				 	<label><font color="white"></font>
                   </label>
                   <div id="especialidad"></div>		                    		                   
            </p>
            		                		                             
           </fieldset>	
	</form>