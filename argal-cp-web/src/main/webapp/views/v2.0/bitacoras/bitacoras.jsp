
<div id="loadBitacorasGif">
	<img src="static/img/v2.0/img/load2.gif" height="100" width="100"
		id="imgEgreso" name="imgEgreso" />
	<h3>Por favor Espere...</h3>
</div>
<div id="dialog-confirm-eliminarbitac" title="¿Eliminar el gasto?"
	style="display: none" align="center">
	<p>
		<span class="ui-icon ui-icon-alert"
			style="float: left; margin: 0 7px 20px 0;"></span>Se eliminará el
		registro de la bitácora!
	<div id="eventoEliminar"></div>
	, Continuar?
	</p>
</div>
<div id="divBitacorasContenido">
	<fieldset>
		<table>
			<tr>
				<td><div id="idEventoBarBit"></div></td>
				<td><div id="numAutorizacionEventoBarBit"></div></td>
				<td><div id="titularEventoBarBit"></div></td>
				<td><div id="pacienteEventoBarBit"></div></td>
				<!--  td><div id="tipoClienteEventoBar"></div></td-->
				<td><div id="clienteEventoBarBit"></div></td>
			</tr>
		</table>
	</fieldset>
	<input type="hidden" id="idEventoHidBit" name="idEventoHidBit" />
	<input type="hidden" id="idClienteHidBit" name="idClienteHidBit" />
	<input type="hidden" id="idHospHidBit" name="idHospHidBit" />
	<div id="tabsBitacoras">
		<ul>
			<li class="ui-tabs-panel2" style="font-size:14px;"><a href="#tabBit1">BIT&Aacute;CORAS M&Eacute;DICAS<img src="static/img/v2.0/img/receta.png" width="20" height="20"></a></li>			
			<li class="ui-tabs-panel2" style="font-size:14px;"><a href="#tabBit2" onclick="verTratMed();">TRATAMIENTO M&Eacute;DICO<img src="static/img/v2.0/img/tratmed.png" width="20" height="20"></a></li>
		</ul>
		<div id="tabBit1">
			<div id="divTablaBitacoras">
				<div align="center">
					<legend>						
						<a href="#" onclick="showDivBitacora(2)" style="color: black;
							padding: 14px 25px;text-align: center;text-decoration: none;display: inline-block;"><img
							src="static/img/v2.0/img/bitacorasv2.png" width="40" height="40" />Agregar Nueva Bitácora</a>
						<h3>BITÁCORAS REGISTRADAS</h3>
					</legend>
				</div>

				<table id="tablaBitacoras" class="display" cellspacing="0"
					align="center">
					<thead>
						<tr>
							<th>Id Bitácora</th>
							<th>Fecha</th>
							<th>Estado del Paciente</th>
							<th>Observaciones</th>
							<th>Interconsultas</th>
							<th>Editar</th>
							<th>Eliminar</th>
						</tr>
					</thead>
					<tbody align="center">
					</tbody>
				</table>
				<button id="cancelarBitacora"
					onclick="cerrarVentanaBitacoraPrincipal();" class="myButton">Cancelar</button>
			</div>

			<div id="divRegistrarBitacora" style="display: none" align="center"
				title="Registrar Bitácora">
				<fieldset class="row1">
					<div align="center">
						<legend>
							<a><img src="static/img/v2.0/img/bitacorasv2.png"
								width="30" height="30" />INGRESE LOS DATOS DE LA BITÁCORA</a>
						</legend>
					</div>
					<form id="altabitacora" name="altabitacora" class="register">
						<table>
							<tr>
								<td><label>FECHA:</label></td>
								<td><input type="date" name="fechaReporteMedico"
									id="fechaReporteMedico" data-validation="altabitacoraval" /></td>
							<tr>
							</tr>
							<tr>
								<td><label>INTERCONSULTA:</label></td>
								<td><select id="interconsulta" name="interconsulta"
									data-validation="altabitacoraval">
										<option value="">seleccione...</option>
										<option>NO</option>
										<option>CARDIOLOGIA</option>
										<option>CIRUGIA VASCULAR PERIFERICA</option>
										<option>ENDOCRINOLOGIA</option>
										<option>GASTROENTEROLOGIA MEDICA</option>
										<option>GASTROENTEROLOGIA QUIRURGICA</option>
										<option>GENETICA</option>
										<option>GINECOLOGIA Y OBSTETRICIA</option>
										<option>HEMATOLOGIA</option>
										<option>INMUNOLOGIA</option>
										<option>MAXILOFACIAL</option>
										<option>NEFROLOGIA</option>
										<option>NEUMOLOGIA</option>
										<option>NEUROLOGIA MEDICA</option>
										<option>NEUROLOGIA QUIRURGICA</option>
										<option>ONCOLOGIA</option>
										<option>OTORRINOLARINGOLOTGIA</option>
										<option>PEDIATRIA</option>
										<option>PSIQUIATRIA</option>
										<option>REUMATOLOGIA</option>
										<option>TOXICOLOGIA</option>
										<option>TRAUMATOLOGIA Y ORTOPEDIA</option>
										<option>UROLOGIA</option>
										<option>VARIOS</option>
								</select></td>
							</tr>
							<tr>
								<td><label>REPORTE MÉDICO:</label></td>
								<td><select id="reporteMedico" name="reporteMedico"
									data-validation="altabitacoraval">
										<option value="">seleccione...</option>
										<option value="1">PACIENTE ESTABLE</option>
										<option value="2">EN ESPERA DE RESULTADOS</option>
										<option value="3">PACIENTE EN ESPERA DE ALTA</option>
										<option value="4">PACIENTE GRAVE</option>
										<option value="5">PACIENTE TERMINAL</option>
										<option value="6">PACIENTE EN ESPERA DE DIAGNOSTICO</option>
								</select></td>
							</tr>
							<tr>
								<td><label>OBSERVACIONES:</label></td>
								<td><textarea maxlength="200" rows="5" cols="40"
										id="observacionesReporteMedico"
										style="text-transform: uppercase;"
										name="observacionesReporteMedico"
										data-validation="altabitacoraval">
		   							</textarea>
		   						</td>
							</tr>
						</table>
						<p>
							<button type="submit" id="buttonGuardarEventoBit"
								class="myButton">Guardar</button>
							<font color="white">___</font>
							<button type="button" class="myButton"
								onclick="cerrarVentanaBitacora();">Cancelar</button>
						</p>
					</form>
				</fieldset>
			</div>

			<div id="divEditarBitacora" style="display: none" align="center"
				title="Editar Bitácora">
				<fieldset class="row1">
					<div align="center">
						<legend>
							<legend>
								<h5></h5>
							</legend>
							<a><img src="static/img/v2.0/img/editar.jpg"
								width="30" height="30" />MODIFIQUE LOS DATOS QUE DESEE DE LA
								BITÁCORA</a>
						</legend>
					</div>

					<form id="editabitacora" name="editabitacora" class="register">
						<table>
							<tr>
								<td><label>FECHA:</label></td>
								<td><input type="date" name="fechaReporteMedicoEdit"
									id="fechaReporteMedicoEdit" data-validation="altabitacoraval" />
								</td>
							</tr>
							<tr>
								<td><label>INTERCONSULTA:</label></td>
								<td><select id="interconsultaEdit" name="interconsultaEdit"
									data-validation="altabitacoraval">
										<option value="">seleccione...</option>
										<option>NO</option>
										<option>CARDIOLOGIA</option>
										<option>CIRUGIA VASCULAR PERIFERICA</option>
										<option>ENDOCRINOLOGIA</option>
										<option>GASTROENTEROLOGIA MEDICA</option>
										<option>GASTROENTEROLOGIA QUIRURGICA</option>
										<option>GENETICA</option>
										<option>GINECOLOGIA Y OBSTETRICIA</option>
										<option>HEMATOLOGIA</option>
										<option>INMUNOLOGIA</option>
										<option>MAXILOFACIAL</option>
										<option>NEFROLOGIA</option>
										<option>NEUMOLOGIA</option>
										<option>NEUROLOGIA MEDICA</option>
										<option>NEUROLOGIA QUIRURGICA</option>
										<option>ONCOLOGIA</option>
										<option>OTORRINOLARINGOLOTGIA</option>
										<option>PEDIATRIA</option>
										<option>PSIQUIATRIA</option>
										<option>REUMATOLOGIA</option>
										<option>TOXICOLOGIA</option>
										<option>TRAUMATOLOGIA Y ORTOPEDIA</option>
										<option>UROLOGIA</option>
										<option>VARIOS</option>
								</select></td>
							</tr>
							<tr>
								<td><label>REPORTE MÉDICO:</label></td>
								<td><input type="hidden" name="idBitacoraHid"
									id="idBitacoraHid" data-validation="altabitacoraval" readonly />
									<select id="reporteMedicoEdit" name="reporteMedicoEdit"
									data-validation="altabitacoraval">
										<option value="">seleccione...</option>
										<option value="1">PACIENTE ESTABLE</option>
										<option value="2">EN ESPERA DE RESULTADOS</option>
										<option value="3">PACIENTE EN ESPERA DE ALTA</option>
										<option value="4">PACIENTE GRAVE</option>
										<option value="5">PACIENTE TERMINAL</option>
										<option value="6">PACIENTE EN ESPERA DE DIAGNOSTICO</option>
								</select></td>
							</tr>
							<tr>
								<td><label>OBSERVACIONES:</label></td>
								<td><textarea maxlength="300" size="300"
										id="observacionesReporteMedicoEdit"
										style="text-transform: uppercase;"
										name="observacionesReporteMedicoEdit"
										data-validation="altabitacoraval">
		   							</textarea></td>
							</tr>
						</table>
						<p>
							<button type="submit" id="buttonGuardarEvento" class="myButton">Guardar</button>
							<font color="white">___</font>
							<button type="button" onclick="showDivBitacora(1)"
								class="myButton">Cancelar</button>
						</p>
					</form>
				</fieldset>
			</div>
		</div>
		<div id="tabBit2">
			<jsp:include page="tratamiento_medico.jsp"></jsp:include>
		</div>
	</div>
</div>