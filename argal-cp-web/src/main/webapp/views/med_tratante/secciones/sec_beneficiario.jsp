
<fieldset style="height: 60%;">
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
								<input type="text" class="form-control" id="apellidoM"
									placeholder="apellidoM" data-error="apellido materno" required>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="control-group">
							<label for="edad" class="control-label">Edad</label>
							<div class="controls">
								<input type="text" class="form-control" id="edad"
									placeholder="edad" required>
							</div>
						</div>
					</td>
					<td align="center">
						<div class="control-group">
							<div class="control-group">
								Sexo <input type="radio" class="form-check-input"
									name="sexobenefradiobutton" id="sexobenefradiobutton"
									value="MASCULINO"> Masculino <input type="radio"
									class="form-check-input" name="sexobenefradiobutton"
									id="sexobenefradiobutton" value="FEMENINO"> Femenino
							</div>
						</div>
					</td>
					<td align="center">
						<div class="control-group" align="center">
							<label for="empresa" class="control-label">Empresa</label>
							<div class="controls">
								<input type="text" class="form-control" id="empresa"
									placeholder="empresa" data-error="empresa" required>
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
								<input type="text" class="form-control" id="numNomina"
									placeholder="numNomina" data-error="empresa" required>
							</div>
						</div>
					</td>
					<td>
						<div class="control-group" align="center">
							<label for="tipoCirugiaSel" class="control-label">Tipo
								Cirug�a</label>
							<div class="controls">
								<select class="form-control" id="tipoCirugiaSel">
									<option value=1>AMBULATORIA</option>
									<option value=2>HOSPITALIZACI�N</option>
								</select>
							</div>
						</div>
					</td>
					<td align="center">
						<button type="submit" ><img src="static/img/save.png" width="50px" /></button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</fieldset>
