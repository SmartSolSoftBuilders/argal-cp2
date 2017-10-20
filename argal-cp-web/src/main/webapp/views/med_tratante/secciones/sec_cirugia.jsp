<div style="max-height: 600px;">
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">CIRUGÍA SOLICITADA (1)</a></li>
			<li><a href="#tabs-2">CIRUGÍA SOLICITADA (2)</a></li>
		</ul>
		<div id="tabs-1">
			<fieldset style="height: 100%;">
				<input type="hidden" id="icdSelHidden" name="icdSelHidden" /> <input
					type="hidden" id="cptSelHidden" name="cptSelHidden" /> <input
					type="hidden" id="icdHidden" name="icdHidden" /> <input
					type="hidden" id="cptHidden" name="cptHidden" /> <input
					type="hidden" id="idCptHidden" name="idCptHidden" /> <input
					type="hidden" id="idIcdHidden" name="idIcdHidden" />
				<div class="form-group">
					<form method="POST" action="contact-form-submission.php"
						class="form-horizontal" id="contact-form">
						<table border=1>
							<tr>
								<td>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 300px;">Diagnóstico
												de Ingreso (Cirugía 1):</label> <img
												src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)"> <input type="text" id="icd1"
												name="icd1" onclick="loadWindowIcd(1)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idIcd1" name="idIcd1"
												data-validation="required">
										</div>
									</div>
								</td>
								<td>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 200px;">Procedimiento
												1:</label> <img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridCpt(1)"> <input type="text" id="cpt1"
												name="cpt1" onclick="loadWindowCpt(1)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idCpt1" name="idCpt1"
												data-validation="required">
										</div>
									</div>
								</td>
							</tr>
						</table>
						<table border=1 style="width: 50%">
							<tr>
								<td>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 200px;">Procedimiento
												2:</label> <img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridCpt(1)"> <input type="text" id="cpt2"
												name="cpt2" onclick="loadWindowCpt(2)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idCpt2" name="idCpt2"
												data-validation="required">
										</div>
									</div>
								</td>
								<td>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 200px;">Procedimiento
												3:</label> <img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridCpt(1)"> <input type="text" id="cpt3"
												name="cpt3" onclick="loadWindowCpt(3)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idCpt3" name="idCpt3"
												data-validation="required">
										</div>
									</div>
								</td>
							</tr>
						</table>
						<table>
							<tr>
								<td>
									<div class="control-group">
										<label class="control-label" for="message">Fundamentos
											del Diagnóstico:</label>
										<div class="controls">
											<textarea name="message" id="message" rows="8" class="span5"
												placeholder="The message you want to send to us."></textarea>
										</div>
									</div>
								</td>
								<td>Otras Enfermedades
									<div class="control-group">
										<label class="control-label" for="name">Diagnóstico 1:</label>
										<div class="controls">
											<input type="text" id="icd2" name="icd2"
												onclick="loadWindowIcd(2)" data-validation="required"
												readonly style="width: 350px;"> <input type="hidden"
												id="idIcd2" name="idIcd2" data-validation="required">
											<img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="name">Diagnóstico 2:</label>
										<div class="controls">
											<input type="text" id="icd3" name="icd3"
												onclick="loadWindowIcd(3)" data-validation="required"
												readonly style="width: 350px;"> <input type="hidden"
												id="idIcd3" name="idIcd3" data-validation="required">
											<img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="name">Diagnóstico 3:</label>
										<div class="controls">
											<input type="text" id="icd3" name="icd3"
												onclick="loadWindowIcd(3)" data-validation="required"
												readonly style="width: 350px;"> <input type="hidden"
												id="idIcd3" name="idIcd3" data-validation="required">
											<img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="name">Diagnóstico 4:</label>
										<div class="controls">
											<input type="text" id="icd3" name="icd3"
												onclick="loadWindowIcd(3)" data-validation="required"
												readonly style="width: 350px;"> <input type="hidden"
												id="idIcd3" name="idIcd3" data-validation="required">
											<img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="name">Diagnóstico 5:</label>
										<div class="controls">
											<input type="text" id="icd3" name="icd3"
												onclick="loadWindowIcd(3)" data-validation="required"
												readonly style="width: 350px;"> <input type="hidden"
												id="idIcd3" name="idIcd3" data-validation="required">
											<img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)">
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
				<input type="hidden" id="icdSelHidden" name="icdSelHidden" /> <input
					type="hidden" id="icdHidden" name="icdHidden" /> <input
					type="hidden" id="cptHidden" name="cptHidden" /> <input
					type="hidden" id="idCptHidden" name="icCptHidden" /> <input
					type="hidden" id="idIcdHidden" name="icIcdHidden" />
				<div class="form-group">
					<form method="POST" action="contact-form-submission.php"
						class="form-horizontal" id="contact-form">
						<table border=1>
							<tr>
								<td>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 300px;">Diagnóstico
												de Ingreso (Cirugía 2):</label> <img
												src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)"> <input type="text" id="icd1"
												name="icd1" onclick="loadWindowIcd(1)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idIcd1" name="idIcd1"
												data-validation="required">
										</div>
									</div>
								</td>
							</tr>
						</table>
						<table border=1 style="width: 100%">
							<tr>
								<td>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 200px;">Procedimiento
												1:</label> <img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridCpt(1)"> <input type="text" id="cpt1"
												name="cpt1" onclick="loadWindowCpt(1)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idCpt1" name="idCpt1"
												data-validation="required">
										</div>
									</div>
								</td>
								<td>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 200px;">Procedimiento
												2:</label> <img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridCpt(1)"> <input type="text" id="cpt1"
												name="cpt1" onclick="loadWindowCpt(1)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idCpt1" name="idCpt1"
												data-validation="required">
										</div>
									</div>
								</td>
								<td>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 200px;">Procedimiento
												3:</label> <img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridCpt(1)"> <input type="text" id="cpt1"
												name="cpt1" onclick="loadWindowCpt(1)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idCpt1" name="idCpt1"
												data-validation="required">
										</div>
									</div>
								</td>
							</tr>
						</table>
						<table>
							<tr>
								<td>
									<div class="control-group">
										<label class="control-label" for="message">Fundamentos
											del Diagnóstico:</label>
										<div class="controls">
											<textarea name="message" id="message" rows="8" class="span5"
												placeholder="The message you want to send to us."></textarea>
										</div>
									</div>
								</td>
								<td>Otras Enfermedades
									<div class="control-group">
										<label class="control-label" for="name">Diagnóstico 1:</label>
										<div class="controls">
											<input type="text" id="icd2" name="icd2"
												onclick="loadWindowIcd(2)" data-validation="required"
												readonly style="width: 350px;"> <input type="hidden"
												id="idIcd2" name="idIcd2" data-validation="required">
											<img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="name">Diagnóstico 2:</label>
										<div class="controls">
											<input type="text" id="icd3" name="icd3"
												onclick="loadWindowIcd(3)" data-validation="required"
												readonly style="width: 350px;"> <input type="hidden"
												id="idIcd3" name="idIcd3" data-validation="required">
											<img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridIcd(1)">
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
	<div id="gridIcd" style="display: none;">
		<jsp:include page="../../icd/grid_icds.jsp"></jsp:include>
		<button type="submit" class="btn btn-primary">Guardar Sección</button>
		<button type="submit" class="btn btn-primary">Continuar</button>
	</div>
	<div id="gridCpt" style="display: none;">
		<jsp:include page="../../cpt/grid_cpts.jsp"></jsp:include>
		<button type="submit" class="btn btn-primary">Guardar Sección</button>
		<button type="submit" class="btn btn-primary">Continuar</button>
	</div>
</div>