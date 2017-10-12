			<div class="form-group">
				<form method="POST" action="contact-form-submission.php"
					class="form-horizontal" id="contact-form">
					<table border=1>
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="name">Fecha</label>
									<div class="controls">
										<input type="date" name="fechaProgramacion" id="fechaProgramacion"
											placeholder="fecha de programación" required>
									</div>
								</div>
							</td>
							<td>
								<div class="control-group">
									<label for="apellidoP" class="control-label">Tiempo Estimado Cirugía</label> 
										<div class="controls">
								        	<input type="number" class="form-control" id="apellidoP"
										placeholder="apellidoP" data-error="apellido paterno" required> Hrs.
								      </div>
								</div>
							</td>
							<td>
								<div class="control-group">
									<label for="apellidoP" class="control-label">Tiempo Estimado Sala Recuperación</label> 
										<div class="controls">
								        	<input type="number" class="form-control" id="tiempoSala"
										placeholder="apellidoP" data-error="apellido paterno" required> Hrs.
								      </div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="control-group">
									<label for="edad" class="control-label">Hospital a Programar</label> 
									<div class="controls">
								        	<input type="text" class="form-control" id="edad" placeholder="edad" required>
								     </div>									
								</div>
							</td>
							<td>
								<div class="control-group">
									<div class="control-group">
										Resultados Preoperatorios <input type="radio" class="form-check-input"
											name="optionsRadios1" id="optionsRadios1" value="option1"
											checked> Normal<input type="radio"
											class="form-check-input" name="optionsRadios1"
											id="optionsRadios1" value="option1" checked> Anormal										
									</div>
								</div>
							</td>						
							<td  align="center">
								<div class="control-group">
									<label class="control-label" for="message">Describir:</label>
								    <div class="controls">
								        <textarea name="message" id="message" rows="8" class="span5" placeholder="The message you want to send to us."></textarea>
								    </div>
								</div>
							</td>
						</tr>	
					</table>
				</form>					
			</div>
		
	