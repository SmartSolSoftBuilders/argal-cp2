<div id="loadTratMedGif">
	<img src="static/img/v2.0/img/load2.gif" height="100" width="100"
		id="imgEgreso" name="imgEgreso" />
	<h3>Por favor Espere...</h3>
</div>
<div id="divTratMedContenido">	
	<div id="divTablaTratMed">
		<div align="center">
			<legend>				
				<a href="#" onclick="verRegistrarTratMed()"><img
					src="static/img/v2.0/img/tratmed.png" width="30" height="30" />Agregar Registro de Tratamiento</a>
				<legend>
					<h3>Tratamiento Médico Registrado</h3>
				</legend>					
			</legend>
		</div>

		<table id="tablaTratMed" class="display" cellspacing="0"
			align="center">
			<thead>
				<tr>
					<th>Id</th>
					<th>Fecha</th>
					<th>Medicamento/Estudio</th>					
					<th>Cantidad</th>
					<th>Unidad</th>
					<th>Periodicidad</th>
					<th>Observaciones</th>
					<th>Suspender</th>
					<th>Eliminar</th>
				</tr>
			</thead>
			<tbody align="center">
			</tbody>
		</table>
		<button id="cancelarTratMed"
			onclick="cerrarVentanaTratMedPrincipal();" class="myButton">Cancelar</button>
	</div>

	<div id="divRegistrarTratMed" style="display: none" align="center"
		title="Registrar Nuevo Tratamiento">
		<div id="tabsAddTratMed">
	  		<ul>
	    		<li><a href="#tabaddmed">Agregar Medicamentos</a></li>
	    		<li><a href="#tabaddproc">Agregar Estudio Médico/Servicio</a></li>	    		
	  		</ul>
	  		<div id="tabaddmed">
				<fieldset class="row1">
					<table>
						<tr>							
							<td><img src="static/img/v2.0/img/medicamentos_add.png" width="90" height="90"/></td>						
							<td><h5>Ingrese los datos del nuevo registro:</h5></td>							
						</tr>
					</table>
					<form id="altaTratMed" name="altaTratMed" class="register">
						<table>
							<tr>
								<td><label>FECHA:</label></td>
								<td><input type="date" name="fechatratmed"
									id="fechatratmed" data-validation="altaTratMedval" />
								</td>
							<tr>
								<td><label>MEDICAMENTO:</label></td>
								<td><input style="width:400px;" type="text" id="medselected" name="medselected" readonly onclick="abrirGridMedicamentos();"/></td>
							</tr>
							<tr>
								<td><label>CANTIDAD:</label></td>
								<td><input type="text" id="cantidadtratmed" style="width:50px;"/>
								<label>UNIDAD:</label>
									<SELECT id="unidadtratmed">
										<option value="0">Seleccione...</option>
										<option>PASTILLA</option>
										<option>CÁPSULA</option>
										<option>AMPOLLETA</option>
										<option>CUCHARADA</option>
										<option>MILILITROS</option>
									</SELECT>
								</td>
							</tr>
							<tr>
								<td><label>PERIODICIDAD:</label></td>
								<td>Cada <input type="text" id="periodicidadtratmed" style="width:80px;"/> Horas</td>
							</tr>
							<tr>				
								<td><label>OBSERVACIONES:</label></td>
								<td><textarea maxlength="200" rows="5" cols="50"
										id="observacionestratmed"
										name="observacionestratmed" 
										style="text-transform: uppercase;"
										name="observacionestratmed"
										data-validation="altaTratMedval">
				   				</textarea></td>
				   			</tr>
						</table>
						<p>
							<button type="submit" id="buttonGuardarEventoBit" class="myButton">Guardar</button>
							<font color="white">___</font>
							<button type="button" class="myButton"
								onclick="cerrarVentanaTratMed();">Cancelar</button>
						</p>
					</form>
				</fieldset>
			</div>
			<div id="tabaddproc">
				<fieldset class="row1">
					<table>
						<tr>							
							<td><img src="static/img/v2.0/img/ryimg.png" width="90" height="90"/></td>
							<td><h5>Ingrese los datos del nuevo registro:</h5></td>
						</tr>
					</table>					
					<form id="altaTratMedProd" name="altaTratMedProd" class="register">
						<table>
							<tr>
								<td><label>FECHA:</label></td>
								<td><input type="date" name="fechaTratMedProd"
									id="fechaTratMedProd" data-validation="altaTratMedval" />
								</td>
							<tr>
								<td><label>ESTUDIO/SERVICIO:</label></td>
								<td><input style="width:400px;" type="text" id="prodselected" name="prodselected" readonly onclick="abrirGridProductos();"/></td>
							</tr>
							<tr>
								<td><label>CANTIDAD:</label></td>
								<td><input type="text" id="cantidadtratmedprod" name="cantidadtratmedprod" data-validation="altaTratMedval"/></td>
							</tr>							
							<tr>				
								<td><label>OBSERVACIONES:</label></td>
								<td><textarea style="text-transform: uppercase;" maxlength="200" rows="5" cols="50"
										id="observacionesReporteMedicoProd"										
										name="observacionesReporteMedicoProd"
										data-validation="altaTratMedval">
				   				</textarea></td>
				   			</tr>
						</table>
						<p>
							<button type="submit" id="buttonGuardarEventoBit" class="myButton">Guardar</button>
							<font color="white">___</font>
							<button type="button" class="myButton"
								onclick="cerrarVentanaTratMed();">Cancelar</button>
						</p>
					</form>
				</fieldset>
			</div>
		</div>
	</div>
	
	<div id="divEditarTratMed" style="display: none" align="center"
		title="Editar Tratamiento Médico">
		<fieldset class="row1">
			<div align="center">
				<legend>
					<legend>
						<h5></h5>
					</legend>
					<a><img src="static/img/v2.0/img/nueva-TratMed.jpg" width="30"
						height="30" />MODIFIQUE LOS DATOS QUE DESEE DEL TRATAMIENTO</a>
				</legend>
			</div>
			
		</fieldset>
	</div>
</div>

<div id="suspenderTratamientoDiv" style="display:none;">
	<h4>¿Suspender el Medicamento del Tratamiento Médico?</h4>
	<label>Fecha de Suspensión del Medicamento:</label>
	<input type="date" name="fechaSuspension" id="fechaSuspension"/>								
</div>

<div id="gridMedicamentos" style="display:none;">
	<jsp:include page="grid_medicamentos.jsp"></jsp:include>
</div>

<div id="gridProductos" style="display:none;">
	<jsp:include page="grid_listaprecios.jsp"></jsp:include>
</div>

