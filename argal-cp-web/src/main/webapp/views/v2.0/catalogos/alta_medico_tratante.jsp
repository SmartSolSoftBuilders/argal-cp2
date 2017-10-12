<div align="center">		
	<form name="altaMedTraform" id="altaMedTraform" class="register">
	<fieldset>
	<legend><img src="../../static/img/v2.0/img/implants.png" height="35" width="35" id="imgImplants2" name="imgImplants2"/>Ingrese los datos del nuevo Médico Tratante:</legend>	
	    
	    
	            <table > 
           <tr>
              <td><label>NOMBRE:
	    </label></td>          
			  <td><input maxlength="100" type="text" id="nombreMedTrat" name="nombreMedTrat" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/></td>

         
              <td><label>APELLIDO PATERNO:</label></td>
              <td> <input maxlength="50" type="text" id="appMedTrat" name="appMedTrat" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	</td>
              
         
              <td><label>APELLIDO MATERNO:
	    </label>	</td>
              <td> <input maxlength="50" type="text" id="apmMedTrat" name="apmMedTrat" data-validation="required" onkeyup="javascript:this.value=this.value.toUpperCase();"/>	</td>
              
        
              <td><label>TIPO MÉDICO:
	    </label></td>
              <td>   <select id="tipoMedSel" name="tipoMedSel" style="width:180px;" data-validation="required">   									
				<option value="">Seleccione...</option>
				<option value="1">RED</option>
				<option value="2">STAFF</option>
				<option value="3">INTERINO</option>
			</select>		</td>
              
          </tr>
        </table>
        </fieldset>
			<br><br>
		<h5>Especialidades</h5>
		   <table id="tablaEspecialidadTratante" class="display" cellspacing="0" width="620px">
					 <thead>
			            <tr>
			                <th>Especialidad</th>
			                <th>Seleccionar</th>				                				                
			            </tr>
			    		</thead>
			    		<tbody align="center">
			    		</tbody>
					</table>
		 <div align="center"><button type="submit" id="buttonGuardarEvento" class="myButton">Guardar</button></div>
	   
	    <br>
	   
	</form>	
</div>	