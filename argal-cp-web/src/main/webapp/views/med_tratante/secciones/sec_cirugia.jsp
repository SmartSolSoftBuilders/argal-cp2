<div style="max-height: 800px;">
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">CIRUGÍA SOLICITADA (1)</a></li>
			<li><a href="#tabs-2">CIRUGÍA SOLICITADA (2)</a></li>
		</ul>
		<div id="tabs-1">
			<table border=3>
				<tr>
					<td><img src="static/img/diagnostico.png" style="float:left;" height="45" width="45"/>Diagnóstico Médico
					</td>
					<td><img src="static/img/procedimiento.png" style="float:left;" height="45" width="45"/>Procedimientos Solicitados
					</td>
				</tr>
				<tr style="background-color:#7fb9af;color:black;">
					<td>						
						<fieldset style="height: 100%;background-color:#7fb9af;">
							<div class="cirugia-form">
								<form method="POST" action="algo.php" class="form-horizontal" id="cirugia-form">
									<input type="hidden" id="idCirugia1" name="idCirugia1" />								
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="name" style="width: 320px;">Diagnóstico
											de Ingreso para la Cirugía 1:</label> <img
											src="static/img/buscar-filtrar.png"
											style="cursor: pointer; float: left;" height="25" width="25"
											onclick="showGridIcd(1)"> <input type="text" id="icd1"
											name="icd1" onclick="loadWindowIcd(1)"
											data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idIcd1" name="idIcd1"
												data-validation="required">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="message">Fundamentos del Diagnóstico:</label>										
										<div class="controls">
											<textarea name="fundamentosDiagnostico1" id="fundamentosDiagnostico1" rows="8" class="span5"
											placeholder="Fundamente brevemente el diagnóstico." onkeyup="javascript:this.value=this.value.toUpperCase();"></textarea>
										</div>
									</div>
								</form>
							</div>
						</fieldset>																		
						</td>
						<td>															
							<fieldset style="height: 100%;background-color:#7fb9af;">
								<div class="cirugia-form">
									<form method="POST" action="algo.php" class="form-horizontal" id="cirugia-form">
									<div class="control-group">									
										<div class="controls">
											<label class="control-label" for="name" style="width: 200px;">Procedimiento
												1:</label> <img src="static/img/buscar-filtrar.png"
												style="cursor: pointer; float: left;" height="25" width="25"
												onclick="showGridCpt(1)"> <input type="text" id="cpt1"
												name="cpt1" onclick="loadWindowCpt(1)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idCpt1" name="idCpt1" data-validation="required">
												
									</div>
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
							</form>
						</div>
						</fieldset>
					</td>
				</tr>
			</table>
			Otras Enfermedades
			<table>				
				<tr>
					<td>			
						<div class="control-group">
							<label class="control-label" for="name">Diagnóstico 1:</label>
							<div class="controls">
								<input type="text" id="icd2" name="icd2"
									onclick="loadWindowIcd(2)" data-validation="required"
									readonly style="width: 350px;"> <input type="hidden"
									id="idIcd2" name="idIcd2" data-validation="required">
								<img src="static/img/buscar-filtrar.png"
								style="cursor: pointer; float: left;" height="25" width="25"
								onclick="showGridIcd(2)">
							</div>
						</div>
					</td>
					<td>
						<div class="control-group">
							<label class="control-label" for="name">Diagnóstico 2:</label>
								<div class="controls">
									<input type="text" id="icd3" name="icd3"
										onclick="loadWindowIcd(3)" data-validation="required"
										readonly style="width: 350px;"> <input type="hidden"
										id="idIcd3" name="idIcd3" data-validation="required">
									<img src="static/img/buscar-filtrar.png"
										style="cursor: pointer; float: left;" height="25" width="25"
										onclick="showGridIcd(3)">
								</div>
						</div>
					</td>
					<td>
						<div class="control-group">
							<label class="control-label" for="name">Diagnóstico 3:</label>
							<div class="controls">
								<input type="text" id="icd4" name="icd4"
								onclick="loadWindowIcd(4)" data-validation="required"
								readonly style="width: 350px;"> <input type="hidden"
								id="idIcd4" name="idIcd4" data-validation="required">
							<img src="static/img/buscar-filtrar.png"
								style="cursor: pointer; float: left;" height="25" width="25"
								onclick="showGridIcd(4)">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="control-group">
							<label class="control-label" for="name">Diagnóstico 4:</label>
								<div class="controls">
									<input type="text" id="icd5" name="icd5"
										onclick="loadWindowIcd(5)" data-validation="required"
										readonly style="width: 350px;"> <input type="hidden"
										id="idIcd5" name="idIcd5" data-validation="required">
									<img src="static/img/buscar-filtrar.png"
										style="cursor: pointer; float: left;" height="25" width="25"
									onclick="showGridIcd(5)">
								</div>
						</div>
					</td>
					<td>
						<div class="control-group">
							<label class="control-label" for="name">Diagnóstico 5:</label>
							<div class="controls">
								<input type="text" id="icd6" name="icd6"
									onclick="loadWindowIcd(6)" data-validation="required"
									readonly style="width: 350px;"> <input type="hidden"
									id="idIcd6" name="idIcd6" data-validation="required">
								<img src="static/img/buscar-filtrar.png"
									style="cursor: pointer; float: left;" height="25" width="25"
									onclick="showGridIcd(6)">
							</div>
						</div>
					</td>
					<td align="right">
						<button type="submit" style="background: none;border: none;"><img src="static/img/save.png" width="50px" /></button>					
					</td>
				</tr>
			</table>		
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
												onclick="showGridIcd(7)"> <input type="text" id="icd7"
												name="icd7" onclick="loadWindowIcd(7)"
												data-validation="required" readonly style="width: 400px;">
											<input type="hidden" id="idIcd7" name="idIcd7"
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
	<div id="gridIcd" style="display: none;">
		<jsp:include page="../../icd/grid_icds.jsp"></jsp:include>		
	</div>
	<div id="gridCpt" style="display: none;">
		<jsp:include page="../../cpt/grid_cpts.jsp"></jsp:include>		
	</div>
</div>