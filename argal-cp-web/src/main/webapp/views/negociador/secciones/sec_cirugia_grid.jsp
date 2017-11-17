<div id="divIcdCirugia"></div>
<div id="divProcedimiento1Negociar"></div>
<div id="divProcedimiento2Negociar"></div>
<div id="divProcedimiento3Negociar"></div>
<h5>A continuación indique los montos que ha negociado:</h5>

<div id="jsGrid">
</div>

<div class="title"><h4><img src="static/img/hosp_receipt.png" width="25px" height="35px" />Presupuesto Hospitalario</h4></div>
<br><font color="darkblue">Costo Promedio de la Cirugía para el Diagnóstico de Ingreso:</font>
<input type="hidden" class="form-control" id="idCirugiaSolicitada1" name="idCirugiaSolicitada1" readonly required>
<input type="hidden" class="form-control" id="costoPromedio" name="costoPromedio"  value="20000.00" readonly required>
<div id="costoPromedioShow"></div>
<br><font color="darkblue">Costo a Negociar de la Cirugía para el Diagnóstico de Ingreso:</font>
<input type="text" class="form-control" id="montoNegociado" name="montoNegociado" required onchange="guardarmontoNegociado();">

<div id="detailsDialog">
    <form id="detailsForm">
        <div class="details-form-field">
            <label for="procedimiento">Procedimiento:</label>
            <input type="text" id="idProcedimientoSolicitado" name="idProcedimientoSolicitado" type="hidden" readonly/>            
            <textarea id="procedimiento" name="procedimiento" readonly> </textArea>
        </div>                
        Honorarios Base: $<input type ="text" readonly name="honorariosBase" id="honorariosBase" value="10000"/>
        <div class="details-form-field">
            <label for="honorariosMedicosNegociados">Honorarios Médico:</label>
            <input id="honorariosMedicosNegociados" name="honorariosMedicosNegociados" type="text" />            
        </div>
        <div class="details-form-field">
            <label for="honorariosAyudanteUnoNegociados">Honorarios Ayudante 1:</label>      
            <input id="honorariosAyudanteUnoNegociados" name="honorariosAyudanteUnoNegociados" type="text" />      
        </div>
        <div class="details-form-field">
            <label for="honorariosAyudanteDosNegociados">Honorarios Ayudante 2:</label>
 			<input id="honorariosAyudanteDosNegociados" name="honorariosAyudanteDosNegociados" type="text" />                       
        </div>
        <div class="details-form-field">
            <label for="honorariosAnestesiologoNegociados">Honorarios Anestesiólogo:</label>
            <input id="honorariosAnestesiologoNegociados" name="honorariosAnestesiologoNegociados" type="text" />            
        </div>
        <div class="details-form-field">
            <button type="submit" id="save">Save</button>
        </div>
    </form>
</div>