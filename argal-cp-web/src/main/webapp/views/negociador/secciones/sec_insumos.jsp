<h5>A continuaci�n indique los montos que ha negociado:</h5>

<div id="jsGridInsumos">
</div>
 
<div id="detailsInsumosDialog">
    <form id="detailsInsumosForm">
        <div class="details-form-field">
            <label for="insumo">Insumo:</label>
            <input id="idInsumo" name="idInsumo" type="hidden" readonly/>            
            <input id="descripcionInsumo" name="descripcionInsumo" type="text" readonly/> <br>Solicitado:$<input id="montoInsumo" name="montoInsumo" type="text" readonly/>
        </div>        
		<div class="details-form-field">
            <label for="honorariosMedicosNegociados">Monto Negociado:</label>
            <input id="montoInsumoNegociado" name="montoInsumoNegociado" type="text" />            
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
					<label for="total" class="control-label"><font color="darkblue">Costo Total de la Cirug�a:</font></label>
					<div id="costoTotal">							
				</div>
			</td>
		</tr>
	</table>					
</div>