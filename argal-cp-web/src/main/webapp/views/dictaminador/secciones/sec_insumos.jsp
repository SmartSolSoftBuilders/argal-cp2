<div id="jsGridInsumos">
</div>
 
<div id="detailsInsumosDialog">
    <form id="detailsInsumosForm">
        <div class="details-form-field">
            <label for="insumo">Insumo:</label>
            <input id="idInsumo" name="idInsumo" type="hidden" readonly/>            
            <textarea id="descripcionInsumo" name="descripcionInsumo" readonly></textarea><br>
            Solicitado:$<input id="montoInsumo" name="montoInsumo" type="text" readonly/>
        </div>        
        <div class="details-form-field">
            <label for="autorizadoInsumo">¿Autorizar?:</label>
            <select id="autorizadoInsumo" name="autorizadoInsumo">
                <option value="">Seleccione...</option>
                <option value="1">SI</option>
                <option value="2">NO</option>                
            </select>
        </div>        
        <div class="details-form-field">
            <button type="submit" id="saveInsumo">Save</button>
        </div>
    </form>
</div>

<div class="form-group">
	<table>
		<tr>
			<td>
				<div class="control-group">
					<label for="total" class="control-label"><font color="darkblue">Costo Total de la Cirugía:</font></label>
					<div id="costoTotal">							
				</div>
			</td>
		</tr>
	</table>					
</div>