<div align="center">		
	<fieldset>
	<form name="editarimplantform" id="editarimplantform" class="register">
	
	<h5>
	<legend><a><img src="../../static/img/v2.0/img/editar.jpg" height="30" width="30" id="editarImplantsImage" name="editar">MODIFIQUE LOS DATOS QUE DESEE DEL IMPLANT:</a></legend>	
		</h5>
		<table>
			<tr>
		    <td>			   			   
	   			<label>NOMBRE:</label>
	   		</td>
	   		<td>
	   			 <input type="hidden" id="idImp" name="idImp" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	    <input maxlength="100" type="text" id="nombreImpEditar" name="nombreImpEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		</tr>
	   		<tr>	   		
	   		<td>
				<label>APELLIDO PATERNO:</label>
			</td>
			<td>
			  <input maxlength="50" type="text" id="appImpEditar" name="appImpEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>		    	
		    </td>
	   		</tr>  
			<tr>
			<td>
				<label>APELLIDO MATERNO:</label>
			</td>
			<td>
			 <input maxlength="50" type="text" id="apmImpEditar" name="apmImpEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>    	
		    </td>
		    </tr>
		    <tr>
		    <td>		   		
	   			<label>NEXTEL:</label>
	   		</td>
	   		<td>
	   		 <input maxlength="10" type="text" id="nextelImpEditar" name="nextelImpEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>ID:</label>
	   		</td>
	   		<td>
	   		<input maxlength="25" type="text" id="idNextImpEditar" name="idNextImpEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>CELULAR:</label>
	   		</td>
	   		<td>
	   		 <input maxlength="10" type="text" id="celularImpEditar" name="celularImpEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>TELÉFONO OFICINA:</label>
	   		</td>
	   		<td>
	   		  <input maxlength="10" type="text" id="telOfImpEditar" name="telOfImpEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>PUESTO:</label>
	   		</td>
	   		<td>
	   		 <input maxlength="100" type="text" id="puestoImpEditar" name="puestoImpEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>CORREO ELECTRÓNICO INSTITUCIONAL:</label>
	   		</td>
	   		<td>
	   		  <input maxlength="100" type="text" id="emailInstImpEditar" name="emailInstImpEditar" data-validation="required email" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>CORREO ELECTRÓNICO PERSONAL:</label>
	   		</td>
	   		<td>
	   		 <input maxlength="100" type="text" id="emailPersImpEditar" name="emailPersImpEditar" data-validation="required email" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		 <tr>
		    <td>		   		
	   			<label>¿SUPER MÉDICO?:</label>
	   		</td>
	   		<td>
	   		<input type="checkbox" id="supermedicoImpEditar" name="supermedicoImpEditar"  onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   	</table>	
		<p>
		   <div align="center"><button type="submit" id="buttonGuardarEvento" class="myButton">Guardar</button></div>	
		</p>

	</form>
</fieldset>
</div>	