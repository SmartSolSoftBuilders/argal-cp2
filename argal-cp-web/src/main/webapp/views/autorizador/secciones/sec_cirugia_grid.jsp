<div id="divIcdCirugia"></div>
<div id="divProcedimiento1Dictaminar"></div>
<div id="divProcedimiento2Dictaminar"></div>
<div id="divProcedimiento3Dictaminar"></div>
<div id="divProcedimiento1Negociar"></div>
<div id="divProcedimiento2Negociar"></div>
<div id="divProcedimiento3Negociar"></div>

<h5>A continuación indique los montos que desee autorizar:</h5>
<div id="jsGrid">
</div>

<div class="title"><h4><img src="static/img/hosp_receipt.png" width="25px" height="35px" />Presupuesto Hospitalario</h4></div>
<br><font color="darkblue">Costo Promedio de la Cirugía para el Diagnóstico de Ingreso:</font>
<input type="hidden" class="form-control" id="idCirugiaSolicitada1" name="idCirugiaSolicitada1"  value="20000.00" readonly required>
<input type="hidden" class="form-control" id="costoPromedio" name="costoPromedio"  value="20000.00" readonly required>
<div id="costoPromedioShow"/>
<br><font color="darkblue">Costo a Autorizar de la Cirugía para el Diagnóstico de Ingreso:</font>
<input type="text" class="form-control" id="montoAutorizado" name="montoAutorizado" required onchange="guardarmontoAutorizado();">


<div id="detailsDialog">
    <form id="detailsForm">
        <div class="details-form-field">
            <label for="procedimiento">Procedimiento:</label>
            <input id="idProcedimientoSolicitado" name="idProcedimientoSolicitado" type="hidden" readonly/>            
            <input id="procedimiento" name="procedimiento" type="text" readonly/>
        </div>        
        <div class="details-form-field">
            <label for="autorizado">¿Autorizar?:</label>
            <select id="autorizado" name="autorizado">
                <option value="">Seleccione...</option>
                <option value="1">SI</option>
                <option value="2">NO</option>                
            </select>
        </div>
        Honorarios Base: $<input type ="text" readonly name="honorariosBase" id="honorariosBase" value="10000"/>
        <div class="details-form-field">
            <label for="honorariosMedicosAutorizados">Honorarios Médico:</label>
            <input id="honorariosMedicosAutorizados" name="honorariosMedicosAutorizados" type="text" /> <br>
        </div>
        <div class="details-form-field">
            <label for="honorariosAyudanteUnoAutorizados">Honorarios Ayudante 1:</label>
            <input id="honorariosAyudanteUnoAutorizados" name="honorariosAyudanteUnoAutorizados" type="text" /><br>
        </div>
        <div class="details-form-field">
            <label for="honorariosAyudanteDosAutorizados">Honorarios Ayudante 2:</label>
            <input id="honorariosAyudanteDosAutorizados" name="honorariosAyudanteDosAutorizados" type="text" /><br>
        </div>
        <div class="details-form-field">
            <label for="honorariosAnestesiologoAutorizados">Honorarios Anestesiólogo:</label>
            <input id="honorariosAnestesiologoAutorizados" name="honorariosAnestesiologoAutorizados" type="text" /><br>
        </div>
        <div class="details-form-field">
            <button type="submit" id="save">Save</button>
        </div>
    </form>
</div>