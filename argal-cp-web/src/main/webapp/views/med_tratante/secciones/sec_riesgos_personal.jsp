
<div class="form-group">
	<form method="POST" action="contact-form-submission.php"
		class="form-horizontal" id="contact-form">
		<table>
			<tr>
				<td>
					<div class="control-group">
						<label for="riesgos" class="control-label">Riesgos
							Quir�rgicos (Indique los riesgos en la cirug�a):</label>
					</div>
				</td>
				<td>
					<div class="checkbox">
						<label><input id="riesgos1" type="checkbox" value="1">I</label>
					</div>
				</td>
				<td>
					<div class="checkbox">
						<label><input id="riesgos2" type="checkbox" value="">II</label>
					</div>
				</td>
				<td>
					<div class="checkbox">
						<label><input id="riesgos3" type="checkbox" value="1">III</label>
					</div>
				</td>
				<td>
					<div class="checkbox">
						<label><input id="riesgos4" type="checkbox" value="1">IV</label>
					</div>
				</td>

			</tr>
		</table>
		<table border=1>
			<tr>
				<td>
					<div class="control-group">
						<label class="control-label" for="name"><img src="static/img/ayudante.png" width=30 height=30/>Nombre del
							Ayudante 1:</label>
						<div class="controls">
							<input type="text" name="nombreAyudanteUno" style="width:400px"
								id="nombreAyudanteUno" placeholder="nombre completo" required
								onkeyup="javascript:this.value=this.value.toUpperCase();">
						</div>
					</div>
				</td>
				<td>
					<div class="control-group">
						<label class="control-label" for="name"><img src="static/img/ayudante.png" width=30 height=30/>Nombre del
							Ayudante 2:</label>
						<div class="controls">
							<input type="text" class="form-control" id="nombreAyudanteDos" style="width:400px"
								placeholder="nombre completo" required
								onkeyup="javascript:this.value=this.value.toUpperCase();">
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="control-group">
						<label for="apellidoP" class="control-label"><img src="static/img/anestesiologo.png" width=30 height=30/>Nombre del
							Anestesi�logo:</label>
						<div class="controls">
							<input type="text" class="form-control" id="nombreAnestesiologo" style="width:400px"
								placeholder="nombre completo" required
								onkeyup="javascript:this.value=this.value.toUpperCase();">
						</div>
					</div>
				</td>
				<td align="right">
					<button type="button" onclick="guardar_p5();"
						style="background: none; border: none;">
						<img src="static/img/save.png" width="50px" />
					</button>
				</td>
			</tr>
		</table>
	</form>
</div>

