<div class="form-group">
	<form method="POST" action="contact-form-submission.php"
		class="form-horizontal" id="contact-form">
		<table border=1>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="name"><img src="static/img/date_icon.png" width=30 height=30/>Fecha:</label>
						<div class="controls">
							<input type="date" name="fechaProgramacion"
								id="fechaProgramacion" placeholder="fecha de programaci�n"
								required>
						</div>
					</div>
				</td>
				<td>
					<div class="control-group">
						<label for="apellidoP" class="control-label"><img src="static/img/time_icon.png" width=30 height=30/>Tiempo
							Estimado Cirug�a</label>
						<div class="controls">
							<input type="number" class="form-control" id="tiempoCirugia" style="width:100px"
								placeholder="tiempo estimado" data-error="tiempoCirugia"
								required> Hrs.
						</div>
					</div>
				</td>
				<td>
					<div class="control-group">
						<label for="apellidoP" class="control-label"><img src="static/img/time_icon.png" width=30 height=30/>Tiempo
							Estimado Sala Recuperaci�n</label>
						<div class="controls">
							<input type="number" class="form-control" style="width:100px"
								id="tiempoSalaRecuperacion" placeholder="tiempo estimado"
								data-error="tiempoSalaRecuperacion" required> Hrs.
						</div>
					</div>
				</td>
			</tr>
		</table>
		<table border=1>
			<tr>
				<td>
					<div class="control-group">
						<label for="edad" class="control-label"><img src="static/img/hosp_icon.png" width=30 height=30/>Hospital a
							Programar</label>
						<div class="controls">
							<select class="form-control" id="hospital" name="hospital">
								<option value="">Seleccione</option>
							</select>
						</div>
					</div>
				</td>
				<td></td>
				<td>
					<div class="control-group">
						<div class="control-group">
							Resultados Preoperatorios <input type="radio"
								class="form-check-input" name="resultadosPreoperatorios"
								id="resultadosPreoperatorios" value="1" checked> Normal<input
								type="radio" class="form-check-input"
								name="resultadosPreoperatorios" id="resultadosPreoperatorios"
								value="2" checked> Anormal
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td align="center">
					<div class="control-group">
						<label class="control-label" for="message">Describir
							Resultados Preoperatorios:</label>
						<div class="controls">
							<textarea name="desResultadosPreoperatorios"
								id="desResultadosPreoperatorios" rows="8" class="span5"
								placeholder="Describa los resultados."
								onkeyup="javascript:this.value=this.value.toUpperCase();"></textarea>
						</div>
					</div>
				</td>
				<td>
				</td>
				<td align="right">
					<button type="button" onclick="guardar_p3();"
						style="background: none; border: none;">
						<img src="static/img/save.png" width="50px" />
					</button>
				</td>
				<td></td>
			</tr>
		</table>
	</form>
</div>

