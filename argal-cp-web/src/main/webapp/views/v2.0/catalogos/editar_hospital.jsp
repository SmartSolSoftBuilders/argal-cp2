<div align="center">		
	<fieldset>
	<form name="editarHospform" id="editarHospform" class="register ">
	<h5>
	<legend><a><img src="../../static/img/v2.0/img/editar.jpg" height="30" width="30" id="imgHospitalesImagen" name="imgHospitales"> MODIFIQUE LOS DATOS QUE DESEE DEL HOSPITAL:</a></legend>	
		</h5>
		<table>
			<tr>
		    <td>			   			   
	   			<label>NOMBRE:</label>
	   		</td>
	   		<td>
	   			<input type="hidden" id="idHospEditar" name="idHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	    <input type="text" id="nombreHospEditar" name="nombreHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		</tr>
	   		<tr>	   		
	   		<td>
				<label>CALLE Y NÚMERO:</label>
			</td>
			<td>
			  <input type="text" id="calleHospEditar" name="calleHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	  	
		    </td>
	   		</tr>  
			<tr>
			<td>
				<label>COLONIA:</label>
			</td>
			<td>
			   <input type="text" id="colHospEditar" name="colHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	    	
		    </td>
		    </tr>
		    <tr>
		    <td>		   		
	   			<label>MUNICIPIO/DELEGACIÓN:</label>
	   		</td>
	   		<td>
	   		 <input type="text" id="mundelHospEditar" name="mundelHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>C.P.:</label>
	   		</td>
	   		<td>
	   		 <input type="text" id="cpHospEditar" name="cpHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>PAÍS:</label>
	   		</td>
	   		<td>
	   		 <select id="paisHospEditar" name="paisHospEditar" data-validation="required">
			<option value="">Seleccione un país...</option>
			<option >MEXICO</option>
			<option >ESTADOS UNIDOS</option>
			<option >BRASIL</option>
			<option >CANADA</option>
			<option >ARGENTINA</option>
			<option >PERU</option>
			<option >COLOMBIA</option>
			<option >BOLIVIA</option>
			<option >VENEZUELA</option>
			<option >CHILE</option>
			<option >ECUADOR</option>
			<option >CHILE</option>
			<option >GUYANA</option>
			<option >URUGUAY</option>
			<option >CHILE</option>
			<option >SURINAM</option>
			<option >NICARAGUA</option>
			<option >HONDURAS</option>
			<option >CUBA</option>
			<option >GUATEMALA</option>
			<option >PANAMA</option>
			<option >COSTA RICA</option>
			<option >REPUBLICA DOMINICANA</option>
			<option >HAITI</option>
			<option >BELICE</option>
			<option >EL SALVADOR</option>
			<option >BAHAMAS</option>
			<option >JAMAICA</option>
			<option >TRINIDAD Y TOBAGO</option>
			<option >DOMINICA</option>
			<option >SANTA LUCIA</option>
			<option >ANTIGUA Y BARBUDA</option>
			<option >BARBADOS</option>
			<option >SAN VICENTE Y LAS GRANADINAS</option>
			<option >GRANADA</option>
			<option >SAN CRISTÓBAL Y NIEVES</option>	    
		</select>	   
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>ESTADO:</label>
	   		</td>
	   		<td>
	   		  <input type="text" id="estadoHospEditar" name="estadoHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>CIUDAD:</label>
	   		</td>
	   		<td>
	   		 <input type="text" id="ciudadHospEditar" name="ciudadHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>CONMUTADOR:</label>
	   		</td>
	   		<td>
	   		  <input type="text" id="conmutadorHospEditar" name="conmutadorHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   		   <tr>
		    <td>		   		
	   			<label>TELÉFONO DIRECTO MÓDULO:</label>
	   		</td>
	   		<td>
	   		 <input type="text" id="telmoduloHospEditar" name="telmoduloHospEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
	   		</td>
	   		 </tr>
	   	</table>	
		<p>
		   <div align="center"><button type="submit" id="buttonGuardarHospital" class="myButton">Guardar</button></div>
		</p>

	</form>	
	</fieldset>
</div>	