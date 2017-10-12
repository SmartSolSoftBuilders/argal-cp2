<div align="center">		
	<form name="editarclienteform" id="editarclienteform" class="register">
	<fieldset>
	
	<legend><a><img src="../../static/img/v2.0/img/cliente.png" height="30" width="30" id="imgCte122" name="imgCte122"/> INGRESE LOS DATOS DEL NUEVO CLIENTE:</a></legend>	
		
        <table > 
           <tr>
              <td><label>RAZON SOCIAL:
	    </label></td>
               <input maxlength="100" type="hidden" id="idClienteClienteEditar" name="idClienteClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
			  <td><input type="text" id="razonSocialClienteEditar" name="razonSocialClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>

          </tr>
          <tr>
              <td><label>DOMICILIO:</label></td>
              <td> <input maxlength="300" type="text" id="domicilioClienteEditar" name="domicilioClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	</td>
              
          </tr>
		   <tr>
              <td><label>DIRECTOR MÉDICO:
	    </label>	</td>
              <td> <input maxlength="100" ype="text" id="directorMedicoClienteEditar" name="directorMedicoClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	</td>
              
          </tr>
		   <tr>
              <td><label>CONMUTADOR:
	    </label></td>
              <td> <input maxlength="10" type="text" id="conmutadorClienteEditar" name="conmutadorClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
              
          </tr>
		   <tr>
              <td><label>NOMBRE CORTO:
	    </label>	</td>
              <td> <input maxlength="50" type="text" id="nombreCortoClienteEditar" name="nombreCortoClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
             
          </tr>
          <tr>
             
              
          </tr>
        </table>
		</fieldset>
		<fieldset>
		
	<legend><a><img src="../../static/img/v2.0/img/cliente.png" height="30" width="30" id="imgCte122" name="imgCte122"/> DATOS DEL CONTACTO:</a></legend>	
		
		 <table > 
           <tr>
              <td><label>NOMBRE:
	    </label>	</td>
              <td><input maxlength="100" type="text" id="nombreClienteEditar" name="nombreClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	  </td>
             
          </tr>
          <tr>
              <td><label>PUESTO:
	    </label></td>
              <td> <input maxlength="100" type="text" id="puestoClienteEditar" name="puestoClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
              
          </tr>
		   <tr>
              <td> <label>TELÉFONO OFICINA:
	    </label></td>
              <td><input maxlength="10" type="text" id="telOficinaClienteEditar" name="telOficinaClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
              
          </tr>
		   <tr>
              <td> <label>TELÉFONO CELULAR:
	    </label></td>
              <td> <input maxlength="10" type="text" id="telCelularClienteEditar" name="telCelularClienteEditar" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
              
          </tr>
		   <tr>
              <td><label>CORREO ELECTRÓNICO:
	    </label></td>
              <td> <input maxlength="100" type="text" id="emailClienteEditar" name="emailClienteEditar" data-validation="required email" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	</td>
              
          </tr>
        </table>
		</fieldset>
	    <div align="center"><button type="submit" id="buttonGuardarClienteEditar" class="myButton">Guardar</button></div>
	</form>	
</div>	