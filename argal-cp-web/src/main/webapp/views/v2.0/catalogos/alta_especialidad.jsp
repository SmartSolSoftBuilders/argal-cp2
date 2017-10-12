<div align="center">		
	
	<form name="altaespecialidadform" id="altaespecialidadform" class="register">
	<fieldset >
	
	<legend><a><img src="../../static/img/v2.0/img/cliente.png" height="30" width="30" id="imgCte122" name="imgCte122"/> INGRESE LOS DATOS DE LA ESPECIALIDAD:</a></legend>	
		
        <table>
          <tr>
              <td><label>DESCRIPCION ESPECIALIDAD:
	    </label></td>
              <td><input maxlength="300" type="text" id="descripcionEspecialidad" name="descripcionEspecialidad" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	</td>
              
          </tr>
          </table>
    </fieldset>
    <button type="button" id="botonGuardarEsp" style="display:block;" class="myButton" onclick="guardarEspecialidad();">GUARDAR</button>
	</form>	
</div>	