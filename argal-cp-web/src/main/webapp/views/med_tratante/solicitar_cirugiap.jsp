<link href="static/css_acc/reset.min.css" rel="stylesheet" type="text/css" />
<link href="static/css_acc/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="static/css_acc/style_acc.css">
<link href="static/js/lib/form/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<script src="static/js/lib/form/jquery.validate.js"></script>
<script src="static/js/lib/form/bootstrap.min.js"></script>
<script src="static/js/lib/form/additional-methods.js"></script>
<script src="static/js/app/solicitud/solicitud.js"></script>
<link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" />
<table style="background-color:rgba(0, 0, 0, 0.13);">
	<tr>
		<td width="20%" align="center">
			<img src="static/img/request_surgery.png" width="20%" />
		</td>
		<td>
		<font size="4">Solicitar una Cirugia Programada. </font><font size="2">Por favor llene cada sección de la información solicitada.
		Puede llenar una sección y guardarla para enviarla después</font>
		<div id="idSolDiv"></div>
		</td>
	</tr>
</table>
<style>
#accordion .ui-accordion-content {
    max-height: 300px;
    line-height: 20px;
    font-size: 10pt;
    text-indent: 10px;      
}

</style>
	
<div id="accordion">
	<h3><img src="static/img/benef.png" width="25px" />1)Registro del Beneficiario</h3>
	<div style="height:400px;">
		<input type="hidden" id="idSolicitud" name="idSolicitud"/>		
		<fieldset style="height:90%;">
			<div class="form-group">
				<form method="POST" action="contact-form-submission.php"
					class="form-horizontal" id="contact-form">
					<table border=1>
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="name">Nombre</label>
									<div class="controls">
										<input type="text" name="nombrePaciente" id="nombrePaciente"
											placeholder="paciente" required>
									</div>
								</div>
							</td>
							<td>
								<div class="control-group">
									<label for="apellidoP" class="control-label">Apellido
										Paterno</label> 
										<div class="controls">
								        	<input type="text" class="form-control" id="apellidoP"
										placeholder="apellidoP" data-error="apellido paterno" required>
								      </div>
								</div>
							</td>
							<td>
								<div class="control-group">
									<label for="apellidoM" class="control-label">Apellido
										Materno</label> 
									<div class="controls">
								        	<input type="text" class="form-control"
										id="apellidoM" placeholder="apellidoM"
										data-error="apellido materno" required>
								      </div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="control-group">
									<label for="edad" class="control-label">Edad</label> 
									<div class="controls">
								        	<input type="text" class="form-control" id="edad" placeholder="edad" required>
								     </div>									
								</div>
							</td>
							<td>
								<div class="control-group">
									<div class="control-group">
										Sexo <input type="radio" class="form-check-input"
											name="sexobenefradiobutton" id="sexobenefradiobutton" value="MASCULINO"
											checked> Masculino <input type="radio"
											class="form-check-input" name="sexobenefradiobutton"
											id="sexobenefradiobutton" value="FEMENINO" checked> Femenino										
									</div>
								</div>
							</td>						
							<td  align="center">
								<div class="control-group" align="center">
									<label for="empresa" class="control-label">Empresa</label> 
									<div class="controls">
								        	<input type="text" class="form-control"
										id="empresa" placeholder="empresa"
										data-error="empresa" required>
								      </div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
							<div class="control-group">
									<label for="numNomina" class="control-label">Clave/Número
									Nómina</label> 
									<div class="controls">
								        	<input type="text" class="form-control"
										id="numNomina" placeholder="numNomina"
										data-error="empresa" required>
								      </div>
								</div>
							</td>							
							<td>
								<div class="control-group" align="center">
									<label for="tipoCirugiaSel" class="control-label">Tipo Cirugía</label> 
									<div class="controls">
								        <select
										class="form-control" id="tipoCirugiaSel">
										<option value=1>CORTA ESTANCIA</option>
										<option value=2>HOSPITALIZACIÓN</option>
										</select>
								      </div>
								</div>								
							</td>
							<td>																					
							</td>
						</tr>
					</table>
					<table width="1200px">
						<tr>						
							<td><button type="submit" ><img src="static/img/save.png" width="50px" /></button></td>
							<td><button type="button" onclick="nextTab(1)" style="background-color: #25726D;"><img src="static/img/continuar.png" width="90px" /></button></td>
						</tr>
					</table>
				</form>
			</div>
		</fieldset>
	</div>
	<h3><img src="static/img/surgery.png" width="25px" />2)Datos de la cirugía</h3>
	<div style="max-height: 400px;">
		<div id="tabs">
			<ul>
    			<li><a href="#tabs-1">CIRUGÍA SOLICITADA (1)</a></li>
    			<li><a href="#tabs-2">CIRUGÍA SOLICITADA (2)</a></li>    
  			</ul>		
			<div id="tabs-1">		
				<fieldset style="height: 90%;">
					<input type="hidden" id="icdSelHidden" name="icdSelHidden"/>
					<input type="hidden" id="cptSelHidden" name="cptSelHidden"/>
					<input type="hidden" id="icdHidden" name="icdHidden"/>
					<input type="hidden" id="cptHidden" name="cptHidden"/>
					<input type="hidden" id="idCptHidden" name="idCptHidden"/>
					<input type="hidden" id="idIcdHidden" name="idIcdHidden"/>
					<div class="form-group">
						<form method="POST" action="contact-form-submission.php"
							class="form-horizontal" id="contact-form">
							<table border=1>
								<tr>
									<td>
										<div class="control-group">
											<div class="controls">
												<label class="control-label" for="name" style="width:300px;">Diagnóstico de Ingreso (Cirugía 1):</label>
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(1)">																						
												<input type="text" id="icd1" name="icd1" onclick="loadWindowIcd(1)" data-validation="required" readonly style="width:400px;">
							                    <input type="hidden" id="idIcd1" name="idIcd1" data-validation="required">												
											</div>
										</div>
									</td>
									<td>
										<div class="control-group">
											<div class="controls">
												<label class="control-label" for="name" style="width:200px;">Procedimiento 1:</label>
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridCpt(1)">																						
												<input type="text" id="cpt1" name="cpt1" onclick="loadWindowCpt(1)" data-validation="required" readonly style="width:400px;">
							                    <input type="hidden" id="idCpt1" name="idCpt1" data-validation="required">												
											</div>
										</div>
									</td>
								</tr>
							</table>
							<table border=1 style="width:50%">
								<tr>									
									<td>
										<div class="control-group">
											<div class="controls">
												<label class="control-label" for="name" style="width:200px;">Procedimiento 2:</label>
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridCpt(1)">																						
												<input type="text" id="cpt2" name="cpt2" onclick="loadWindowCpt(2)" data-validation="required" readonly style="width:400px;">
							                    <input type="hidden" id="idCpt2" name="idCpt2" data-validation="required">												
											</div>
										</div>
									</td>
									<td>
										<div class="control-group">
											<div class="controls">
												<label class="control-label" for="name" style="width:200px;">Procedimiento 3:</label>
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridCpt(1)">																						
												<input type="text" id="cpt3" name="cpt3" onclick="loadWindowCpt(3)" data-validation="required" readonly style="width:400px;">
							                    <input type="hidden" id="idCpt3" name="idCpt3" data-validation="required">												
											</div>
										</div>
									</td>
								</tr>
							</table>
							<table>
								<tr>
									<td>
										<div class="control-group">
								            <label class="control-label" for="message">Fundamentos del Diagnóstico:</label>
								            <div class="controls">
								                <textarea name="message" id="message" rows="8" class="span5" placeholder="The message you want to send to us."></textarea>
								            </div>
								        </div>
									</td>									
									<td>
										Otras Enfermedades									
										<div class="control-group">
											<label class="control-label" for="name">Diagnóstico 1:</label>
											<div class="controls">
												<input type="text" id="icd2" name="icd2" onclick="loadWindowIcd(2)" data-validation="required" readonly style="width:350px;">
							                    <input type="hidden" id="idIcd2" name="idIcd2" data-validation="required">
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(1)">
											</div>
										</div>									
										<div class="control-group">
											<label class="control-label" for="name">Diagnóstico 2:</label>
											<div class="controls">
												<input type="text" id="icd3" name="icd3" onclick="loadWindowIcd(3)" data-validation="required" readonly style="width:350px;">
							                    <input type="hidden" id="idIcd3" name="idIcd3" data-validation="required">
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(1)">
											</div>
										</div>														
									</td>							
								</tr>
							</table>					
						</form>
					</div>			
				</fieldset>
			</div>
			<div id="tabs-2">
	    		<fieldset style="height: 90%;">
					<input type="hidden" id="icdSelHidden" name="icdSelHidden"/>
					<input type="hidden" id="icdHidden" name="icdHidden"/>
					<input type="hidden" id="cptHidden" name="cptHidden"/>
					<input type="hidden" id="idCptHidden" name="icCptHidden"/>
					<input type="hidden" id="idIcdHidden" name="icIcdHidden"/>
					<div class="form-group">
						<form method="POST" action="contact-form-submission.php"
							class="form-horizontal" id="contact-form">
							<table border=1>
								<tr>
									<td>
										<div class="control-group">
											<div class="controls">
												<label class="control-label" for="name" style="width:300px;">Diagnóstico de Ingreso (Cirugía 2):</label>
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(1)">																						
												<input type="text" id="icd1" name="icd1" onclick="loadWindowIcd(1)" data-validation="required" readonly style="width:400px;">
							                    <input type="hidden" id="idIcd1" name="idIcd1" data-validation="required">												
											</div>
										</div>
									</td>
								</tr>
							</table>
							<table border=1 style="width:100%">
								<tr>
									<td>
										<div class="control-group">
											<div class="controls">
												<label class="control-label" for="name" style="width:200px;">Procedimiento 1:</label>
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridCpt(1)">																						
												<input type="text" id="cpt1" name="cpt1" onclick="loadWindowCpt(1)" data-validation="required" readonly style="width:400px;">
							                    <input type="hidden" id="idCpt1" name="idCpt1" data-validation="required">												
											</div>
										</div>
									</td>
									<td>
										<div class="control-group">
											<div class="controls">
												<label class="control-label" for="name" style="width:200px;">Procedimiento 2:</label>
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridCpt(1)">																						
												<input type="text" id="cpt1" name="cpt1" onclick="loadWindowCpt(1)" data-validation="required" readonly style="width:400px;">
							                    <input type="hidden" id="idCpt1" name="idCpt1" data-validation="required">												
											</div>
										</div>
									</td>
									<td>
										<div class="control-group">
											<div class="controls">
												<label class="control-label" for="name" style="width:200px;">Procedimiento 3:</label>
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridCpt(1)">																						
												<input type="text" id="cpt1" name="cpt1" onclick="loadWindowCpt(1)" data-validation="required" readonly style="width:400px;">
							                    <input type="hidden" id="idCpt1" name="idCpt1" data-validation="required">												
											</div>
										</div>
									</td>
								</tr>
							</table>
							<table>
								<tr>
									<td>
										<div class="control-group">
								            <label class="control-label" for="message">Fundamentos del Diagnóstico:</label>
								            <div class="controls">
								                <textarea name="message" id="message" rows="8" class="span5" placeholder="The message you want to send to us."></textarea>
								            </div>
								        </div>
									</td>									
									<td>
										Otras Enfermedades									
										<div class="control-group">
											<label class="control-label" for="name">Diagnóstico 1:</label>
											<div class="controls">
												<input type="text" id="icd2" name="icd2" onclick="loadWindowIcd(2)" data-validation="required" readonly style="width:350px;">
							                    <input type="hidden" id="idIcd2" name="idIcd2" data-validation="required">
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(1)">
											</div>
										</div>									
										<div class="control-group">
											<label class="control-label" for="name">Diagnóstico 2:</label>
											<div class="controls">
												<input type="text" id="icd3" name="icd3" onclick="loadWindowIcd(3)" data-validation="required" readonly style="width:350px;">
							                    <input type="hidden" id="idIcd3" name="idIcd3" data-validation="required">
												<img src="static/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(1)">
											</div>
										</div>														
									</td>							
								</tr>
							</table>					
						</form>
					</div>			
				</fieldset>
	  		</div>		
	  	</div>
		<button type="submit" class="btn btn-primary">Guardar Sección</button>
		<button type="submit" class="btn btn-primary">Continuar</button>	
		<div id="gridIcd" style="display:none;">
			<jsp:include page="../icd/grid_icds.jsp"></jsp:include>
			<button type="submit" class="btn btn-primary">Guardar Sección</button>
			<button type="submit" class="btn btn-primary">Continuar</button>
		</div>
		<div id="gridCpt" style="display:none;">
			<jsp:include page="../cpt/grid_cpts.jsp"></jsp:include>
			<button type="submit" class="btn btn-primary">Guardar Sección</button>
			<button type="submit" class="btn btn-primary">Continuar</button>
		</div>
	</div>
	<h3><img src="static/img/schedule.png" width="25px" />3)Programación</h3>			
	<div>
		<jsp:include page="secciones/sec_programacion.jsp"></jsp:include>
		<button type="submit" class="btn btn-primary">Guardar Sección</button>
		<button type="submit" class="btn btn-primary">Continuar</button>
	</div>
	<h3><img src="static/img/documents.png" width="25px" />4)Documentación</h3>
	<div>
		<jsp:include page="secciones/sec_documentacion.jsp"></jsp:include>
	</div>
	<h3><img src="static/img/person.png" width="25px" />5)Riesgos y Personal Requerido Adicional</h3>
	<div>
		<jsp:include page="secciones/sec_riesgos_personal.jsp"></jsp:include>
		<button type="submit" class="btn btn-primary">Guardar Sección</button>
		<button type="submit" class="btn btn-primary">Enviar Solicitud</button>
	</div>
</div>	