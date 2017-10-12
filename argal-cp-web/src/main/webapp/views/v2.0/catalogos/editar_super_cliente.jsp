<div align="center">		
	<form name="editarsuperclienteform" id="editarsuperclienteform" class="register">
	<fieldset>
	<h5>
	<legend><a><img src="../../static/img/v2.0/img/nuevosupercliente.png" height="30" width="30" id="imgCte122" name="imgCte122"/> INGRESE LOS DATOS DEL NUEVO SUPER CLIENTE:</a></legend>	
		</h5>
        <table> 
           <tr>
              <td><label>RAZON SOCIAL:
	    </label></td>
              <input maxlength="100" type="hidden" id="idClienteSuperClienteE" name="idClienteSuperClienteE" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>
              <td><input maxlength="100" type="text" id="razonSocialSuperClienteE" name="razonSocialSuperCliente" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
             
          </tr>
          <tr>
              <td><label>DOMICILIO:
	    </label></td>
              <td><input maxlength="300" type="text" id="domicilioSuperClienteE" name="domicilioSuperCliente" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	</td>
              
          </tr>
		   <tr>
              <td><label>CONMUTADOR:
	    </label></td>
              <td><input maxlength="10" type="text" id="conmutadorSuperClienteE" name="conmutadorSuperCliente" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
              
          </tr>
           <tr>
              <td><label>NOMBRE:
	    </label></td>
              <td><input maxlength="100" type="text" id="nombreSuperClienteE" name="nombreSuperCliente" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
             
          </tr>
		   <tr>
              <td><label>TELÉFONO OFICINA:</label></td>
              <td><input maxlength="10" type="text" id="telOficinaSuperClienteE" name="telOficinaSuperCliente" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
              
          </tr>
		   <tr>
              <td><label>TELÉFONO CELULAR:</label></td>
              <td><input maxlength="10" type="text" id="telCelularSuperClienteE" name="telCelularSuperCliente" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
              
          </tr>
		   <tr>
              <td><label>CORREO ELECTRÓNICO“:</label></td>
              <td><input maxlength="100" type="text" id="emailSuperClienteE" name="emailSuperCliente" data-validation="required email" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>
              
          </tr>
		 
        </table>
		</fieldset>
	    <div align="center"><button type="submit" id="buttonGuardarClienteEditar" class="myButton">Guardar</button></div>
	</form>	
</div>	