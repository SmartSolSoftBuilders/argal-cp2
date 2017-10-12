<div id="tabsFinalizar">
	<ul class="ui-widget-header2">
	    <li class="ui-tabs-panel2" style="font-size:14px;"><a href="#tabs-1">FACTURAS DEL EVENTO<img src="static/img/v2.0/facturas.png" width="20" height="20"></a></li>
	    <li class="ui-tabs-panel2" style="font-size:14px;"><a href="#tabs-2" >MONTOS FINALES<img src="static/img/v2.0/montosfinales.png" width="20" height="20"></a></li>	    
	  </ul>
	  <div id="tabs-1">
	  	FACTURAS APROBADAS
	    <table id="facturasAprobadasTabla" class="display" cellspacing="0" width="50%">
			<thead>
	            <tr>
	                <th>No. FACTURA</th>
	                <th>MONTO</th>	                				                				              
	            </tr>
	    	</thead>
	    	<tbody>
	    	</tbody>
		</table>
		FACTURAS RECHAZADAS
		<table id="facturasRechazadasTabla" class="display" cellspacing="0" width="50%">
			<thead>
	            <tr>
	                <th>No. FACTURA</th>
	                <th>MONTO</th>	                				                				              
	            </tr>
	    	</thead>
	    	<tbody>
	    	</tbody>
		</table>
	  </div>	  
	  <div id="tabs-2">
	  <form class="form-container">
	  		<table id="tablaBalance"  width="100%">
		    	<tr>
		    		<td>
		    			<div class="form-title">Monto Antes de Desvíos:</div>
						<input class="form-field" type="text"  id="montoAntesDesviosDiv" readonly/>
					</td>
		    		<td><div class="form-title">Total Desvíos Facturación:</div>
		    			<input class="form-field" type="text"  id="montoTotalFactDiv" readonly/>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td><div class="form-title">Total Cargos Observados:</div>
		    			<input class="form-field" type="text"  id="totalCargObsDiv" readonly/>
		    			</td>		    			    	
		    		<td><div class="form-title">Monto Ajuste Facturación:</div>
		    			<input class="form-field" type="text"  id="montoAjusteFactDiv" readonly/>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td><div class="form-title">Desvíos Comprobados:</div>
		    			<input class="form-field" type="text"  id="desviosCompDiv" readonly/>
		    		</td>		    		
		    		<td><div class="form-title">Monto Facturación Corregido:</div>
		    			<input class="form-field" type="text"  id="montoFactCorregidoDiv" readonly/>
		    		</td>	    		
		    	</tr>
		    	<tr>
		    		<td><div class="form-title">Monto Después de Desvíos:</div>
		    			<input class="form-field" type="text"  id="montoDespDesviosDiv" readonly/>
		    		</td>		    			    	
		    		<td><div class="form-title">Monto Final Facturación:</div>
		    			<input class="form-field" type="text"  id="montoFinalFactuDiv" readonly/>
		    		</td>
		    	</tr>
		    	<tr>
		    		<td><div class="form-title" id="segurosDiv">IVA:</div>		    		
		    		</td>		    		
		    		<td><div class="form-title" id="divFacturasAprobRech"></div>		    			
		    		</td>	    				    			    	
		    	</tr>
		    	<tr>
		    		<td><div class="form-title">Descuento Hospital:</div>
		    			<input class="form-field" type="text"  id="descHospDiv" readonly/>
		    		</td>
		    		<td>
		    		</td>	    		
		    	</tr>		    		    
			</table>
		</form>
	  </div>	  
</div>					