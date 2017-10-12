<div id="PasswordController" align="center">
<table width="100%" border=0>
	<tr>
		<td width="1000" height="23" align="center" ><img src="static/img/v2.0/img/password_recovery.png" height="30" width="30"/> Cambiar Password
	    </td>
	</tr>
</table>

<table width="100%" border="1">
	<tr>
		<td width="60%" align="center" bgcolor="#46C2BC"><span style="color: #ffffff;">Escriba el Password Anterior:</span></td>
		<td><input type="password" id="passwordant" name="passwordant" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
	</tr>
</table>
<br>
<button id="buttonvalidaridentidad" width="200px" height="100px" class="myButton" onclick="validarIdentidadAdmin()" >Validar Identidad</button>
<br><br>
<div id="nuevoPswCkCandado">
	<table width="100%" border=0>
		<tr>
			<td width="1000" height="23" align="center" ><img src="static/img/v2.0/img/lock-icon.png" height="130" width="130"/>
		    </td>
		</tr>
	</table>
</div>
<div id="nuevoPswCk">
	Identidad Validada con éxito!
	<table width="100%" border="1">
		<tr>
			<td width="60%" align="center" bgcolor="#46C2BC"><span style="color: #ffffff;">Nuevo password:</span></td>
			<td><input type="password" id="password" name="password" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
		</tr>
		<tr>
			<td width="60%" align="center" bgcolor="#46C2BC"><span style="color: #ffffff;">Ingresa de nuevo el password:</span></td>
			<td><input type="password" id="passwordre" name="passwordre" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
		</tr>
	</table>
	<!-- button ng-show="sendFile!=1" ng-click="ajax_download()">Generar</button -->
	<br>
	<br>														  	
	<button id="guardarNuevoPswBt" name="guardarNuevoPswBt" class="myButton" onclick="guardarPswNuevoAdmin()" >Guardar</button>
</div>
</div>
