<div id="loadGastosGif">
	<img src="static/img/v2.0/img/load2.gif" height="100" width="100" id="imgEgreso" name="imgEgreso"/>
	<h3>Por favor Espere...</h3>
</div>
<div id="tituloGastos">
	<fieldset>
	<table>
		<tr>			
			<td><div id="titularEventoBar"></div></td>
			<td><div id="pacienteEventoBar"></div></td>				
			<td><div id="clienteEventoBar"></div></td>
			<td><div id="numAutorizacionEventoBar"></div></td>		
		</tr>
		<tr>								
			<td><div id="totalEdoCtaEventoBar"></div></td>
			<td><div id="totalCargObsEventoBar"></div></td>
			<td><div id="totalGastosRelEventoBar"></div></td>
			<td><div id="totalGastosEvitadosEventoBar"></div></td>
		</tr>
	</table>
	</fieldset>
</div>
<div id="tabs">
	<ul class="ui-widget-header2">
	    <li class="ui-tabs-panel2" style="font-size:14px;"><a href="#tabs-1">ESTADOS DE CUENTA<img src="static/img/v2.0/edocuenta.png" width="20" height="20"></a></li>
	    <li class="ui-tabs-panel2" style="font-size:14px;"><a href="#tabs-2">GASTOS OBSERVADOS<img src="static/img/v2.0/gastos observados.png" width="20" height="20"></a></li>
	    <li class="ui-tabs-panel2" style="font-size:14px;"><a href="#tabs-3">GASTOS RELEVANTES<img src="static/img/v2.0/montosfinales.png" width="20" height="20"></a></li>
	    <li class="ui-tabs-panel2" style="font-size:14px;"><a href="#tabs-4">GASTOS EVITADOS<img src="static/img/v2.0/icon-ahorro.png" width="20" height="20"></a></li>
	  </ul>
	  <div id="tabs-1" >
	    <table id="tablaEdosCuenta" class="display" cellspacing="0" width="100%">
		 <thead>
            <tr>
                <th>Id Edo Cuenta</th>
                <th>Tipo Estado de Cuenta</th>
                <th>Fecha</th>
                <th>Monto</th>				                				               
            </tr>
    		</thead>
    		<tbody>
    		</tbody>
		</table>
	  </div>
	  <div id="tabs-2">
	    <table id="tablaCargosObservados" class="display" cellspacing="0" width="100%">
		 <thead>
            <tr>
                <th>Id Gasto</th>
                <th>Fecha</th>
                <th>Producto</th>
                <th>Monto Unitario</th>
                <th>Cantidad</th>
                <th>Área</th>
                <th>Rubro</th>
                <th>Razón</th>				                				               
            </tr>
    		</thead>
    		<tbody>
    		</tbody>
		</table>
	  </div>
	  <div id="tabs-3">
	    <table id="tablaGastosRelevantes" class="display" cellspacing="0" width="100%">
		 <thead>
            <tr>
                <th>Id Gasto</th>
                <th>Fecha</th>
                <th>Tipo</th>
                <th>Monto</th>
                <th>Área</th>				                				               
            </tr>
    		</thead>
    		<tbody>
    		</tbody>
		</table>
	  </div>
	  <div id="tabs-4">
	    <table id="tablaGastosEvitados" class="display" cellspacing="0" width="100%">
		 <thead>
            <tr>
                <th>Id Gasto</th>
                <th>Fecha</th>                
                <th>Monto</th>
                <th>Justificación</th>                				                				              
            </tr>
    		</thead>
    		<tbody>
    		</tbody>
		</table>
	  </div>
</div>					