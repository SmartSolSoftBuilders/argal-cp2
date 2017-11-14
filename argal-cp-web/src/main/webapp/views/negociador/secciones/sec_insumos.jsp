<div id="jsGridInsumos">
</div>
 
<div id="detailsInsumosDialog">
    <form id="detailsInsumosForm">
        <div class="details-form-field">
            <label for="insumo">Insumo:</label>
            <input id="idInsumo" name="idInsumo" type="hidden" readonly/>            
            <input id="descripcionInsumo" name="descripcionInsumo" type="text" readonly/> <br>Solicitado:$<input id="monto" name="monto" type="text" readonly/>
        </div>        
		<div class="details-form-field">
            <label for="honorariosMedicosNegociados">Monto Negociado:</label>
            <input id="montoNegociado" name="montoNegociado" type="text" />            
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