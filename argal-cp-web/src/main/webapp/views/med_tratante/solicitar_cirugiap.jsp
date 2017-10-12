<link href="static/css_acc/reset.min.css" rel="stylesheet"
	type="text/css" />
<link href="static/css_acc/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="static/css_acc/style_acc.css">
<link href="static/js/lib/form/bootstrap-combined.min.css"
	rel="stylesheet" type="text/css" />
<script src="static/js/lib/form/jquery.validate.js"></script>
<script src="static/js/lib/form/bootstrap.min.js"></script>
<script src="static/js/lib/form/additional-methods.js"></script>
<script src="static/js/app/solicitud/solicitud.js"></script>
<table style="background-color:rgba(0, 0, 0, 0.13);">
	<tr>
		<td width="20%" align="center">
			<img src="static/img/request_surgery.png" width="30%" />
		</td>
		<td>
		<h4>Solicitar una Cirugia Programada</h4>
		<h5>Por favor llene cada secci�n de la informaci�n solicitada.
		Puede llenar una secci�n y guardarla para enviarla despu�s.</h5>
		</td>
	</tr>
</table>
<style>
#accordion .ui-accordion-content {
    max-height: 350px;
}
</style>
	
<div id="accordion">
	<h3>1)Registro del Beneficiario</h3>
	<div style="height:400px;">
		<input type="hidden" id="idSolicitud" name="idSolicitud"/>		
		<fieldset style="height:90%;">
			<legend>Datos del Beneficiario</legend>
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
											name="optionsRadios1" id="optionsRadios1" value="option1"
											checked> Masculino <input type="radio"
											class="form-check-input" name="optionsRadios1"
											id="optionsRadios1" value="option1" checked> Femenino										
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
									<label for="numNomina" class="control-label">Clave/N�mero
									N�mina</label> 
									<div class="controls">
								        	<input type="text" class="form-control"
										id="numNomina" placeholder="numNomina"
										data-error="empresa" required>
								      </div>
								</div>
							</td>
							<td>
								<div class="control-group" align="center">
									<label for="fechaSolicitud" class="control-label">Fecha Solicitud</label> 
									<div class="controls">
								        	<input type="date" class="form-control" id="fechaSolicitud"
											placeholder="fecha solicitud" required>
								      </div>
								</div>														
							</td>
							<td>
								<div class="control-group" align="center">
									<label for="tipoCirugiaSel" class="control-label">Tipo Cirug�a</label> 
									<div class="controls">
								        <select
										class="form-control" id="tipoCirugiaSel">
										<option value=1>CORTA ESTANCIA</option>
										<option value=2>HOSPITALIZACI�N</option>
										</select>
								      </div>
								</div>								
							</td>
						</tr>
					</table>
					<button type="submit" class="btn btn-primary">Guardar Secci�n</button>
					<button type="submit" class="btn btn-primary">Continuar</button>
				</form>
			</div>
		</fieldset>
	</div>
	<h3>2)Datos de la cirug�a</h3>
	<div>
		<fieldset style="height: 90%;">
			<legend>Datos de la Cirugia por Solicitar</legend>
			<div class="form-group">
				<form method="POST" action="contact-form-submission.php"
					class="form-horizontal" id="contact-form">
					<table border=1>
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="name">Diagn�stico de Ingreso 1:</label>
									<div class="controls">
										<input type="text" id="icd1" name="icd1" onclick="loadWindowIcd(1)" data-validation="required" readonly>
					                    <input type="hidden" id="idIcd1" name="idIcd1" data-validation="required">
										<img src="static/img/v2.0/img/buscar-filtrar.png"  style="cursor: pointer;float:left; " height="25" width="25" onclick="showGridIcd(1)">
									</div>
								</div>
							</td>
						</tr>
					</table>
					<table border=1>
						<tr>
							<td>
								Procedimiento 1:
								<input type="text" id="cpt1" name="cpt1" onclick="showGridCpt(1)" data-validation="required" readonly size="50px">
							    <input type="hidden" id="idCpt1" name="idCpt1" data-validation="required">
								<img src="static/img/v2.0/img/buscar.jpg"  style="cursor: pointer; " height="25" width="25" onclick="showGridCpt(1)">
							</td>
							<td>
								Procedimiento 2:
								<input type="text" id="cpt1" name="cpt1" onclick="showGridCpt(1)" data-validation="required" readonly size="50px">
							    <input type="hidden" id="idCpt1" name="idCpt1" data-validation="required">
								<img src="static/img/v2.0/img/buscar.jpg"  style="cursor: pointer; " height="25" width="25" onclick="showGridCpt(1)">
							</td>
							<td>
								Procedimiento 3:
								<input type="text" id="cpt1" name="cpt1" onclick="showGridCpt(1)" data-validation="required" readonly size="50px">
							    <input type="hidden" id="idCpt1" name="idCpt1" data-validation="required">
								<img src="static/img/v2.0/img/buscar.jpg"  style="cursor: pointer; " height="25" width="25" onclick="showGridCpt(1)">
							</td>
						</tr>
						<tr>
							<td>
								<div class="control-group">
						            <label class="control-label" for="message">Fundamentos del Diagn�stico:</label>
						            <div class="controls">
						                <textarea name="message" id="message" rows="8" class="span5" placeholder="The message you want to send to us."></textarea>
						            </div>
						        </div>
							</td>
							<td>								
							</td>						
							<td>								
							</td>	
						</tr>
					</table>
					Otras Enfermedades
					<table>
						<tr>
							<td>
							<div class="control-group">
								<label for="numNomina" class="control-label">Clave/N�mero
									N�mina</label> 
									<div class="controls">
								        	<input type="text" class="form-control"
										id="numNomina" placeholder="numNomina"
										data-error="empresa" required>
								      </div>
								</div>
							</td>
							<td>
								<div class="control-group" align="center">
									<label for="fechaSolicitud" class="control-label">Fecha Solicitud</label> 
									<div class="controls">
								        	<input type="date" class="form-control" id="fechaSolicitud"
											placeholder="fecha solicitud" required>
								      </div>
								</div>														
							</td>
							<td>
								<div class="control-group" align="center">
									<label for="tipoCirugiaSel" class="control-label">Tipo Cirug�a</label> 
									<div class="controls">
								        <select
										class="form-control" id="tipoCirugiaSel">
										<option value=1>CORTA ESTANCIA</option>
										<option value=2>HOSPITALIZACI�N</option>
										</select>
								      </div>
								</div>								
							</td>
						</tr>
					</table>
					<button type="submit" class="btn btn-primary">Guardar Secci�n</button>
					<button type="submit" class="btn btn-primary">Continuar</button>
				</form>
			</div>
		</fieldset>
	</div>
	<div id="gridIcd">
		<jsp:include page="../icd/grid_icds.jsp"></jsp:include>
	</div>
	<div id="gridCpt">
		<jsp:include page="../cpt/grid_cpts.jsp"></jsp:include>
	</div>
</div>	