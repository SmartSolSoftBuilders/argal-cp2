<div id="jsGridInsumos">
</div>
 
<div id="detailsInsumosDialog">
    <form id="detailsInsumosForm">
        <div class="details-form-field">
            <label for="insumo">Insumo:</label>
            <input id="idInsumo" name="idInsumo" type="hidden" readonly/>            
            <input id="descripcionInsumo" name="descripcionInsumo" type="text" readonly/> Solicitado:$<input id="montoInsumo" name="montoInsumo" type="text" readonly/>
        </div>        
        <div class="details-form-field">
            <label for="autorizadoInsumo">�Autorizar?:</label>
            <select id="autorizadoInsumo" name="autorizadoInsumo">
                <option value="">Seleccione...</option>
                <option value="1">SI</option>
                <option value="2">NO</option>                
            </select>
            <br>Monto a Autorizar<input id="montoAutorizado" name="montoAutorizado" type="text"/>
        </div>        
        <div class="details-form-field">
            <button type="submit" id="saveInsumo">Save</button>
        </div>
    </form>
</div>

<label for="total" class="control-label">Costo Promedio del Evento por el ICD:</label>
<input type="text" class="form-control" id="costoPromedio" name="costoPromedio"  value="20000" required>
<div class="form-group">
	<table>
		<tr>
			<td>
				<div class="control-group">
					<label for="total" class="control-label">Costo Total del Evento:</label>
					<input type="text" class="form-control" id="costoTotal" name="costoTotal" required>							
				</div>
			</td>
		</tr>
	</table>					
</div>