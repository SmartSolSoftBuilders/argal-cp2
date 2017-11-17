<div id="divIcdCirugia"></div>

<div id="jsGrid">
</div>

<div class="title"><h4><img src="static/img/hosp_receipt.png" width="25px" height="35px" />Presupuesto Hospitalario</h4></div>
<br><font color="darkblue">Costo Promedio de la Cirugía para el Diagnóstico de Ingreso:</font>
<input type="hidden" class="form-control" id="idCirugiaSolicitada1" name="idCirugiaSolicitada1"  value="20000.00" readonly required>
<input type="hidden" class="form-control" id="costoPromedio" name="costoPromedio"  value="20000.00" readonly required>
<div id="costoPromedioShow"/>
<br><font color="darkblue">Costo a Dictaminar de la Cirugía para el Diagnóstico de Ingreso:</font>
<input type="text" class="form-control" id="montoDictaminado" name="montoDictaminado" required onchange="guardarmontoDictaminado();">


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
            <label for="honorariosMedicosDictaminados">Honorarios Médico:</label>
            <input id="honorariosMedicosDictaminados" name="honorariosMedicosDictaminados" type="text" /> <br>Aplicar: <input style="width:70px" id="porcHM" name="porcHM" type="number" value="100" onchange="actualizarHonorarios(1);"/>%
        </div>
        <div class="details-form-field">
            <label for="honorariosAyudanteUnoDictaminados">Honorarios Ayudante 1:</label>
            <input id="honorariosAyudanteUnoDictaminados" name="honorariosAyudanteUnoDictaminados" type="text" /><br>Aplicar: <input style="width:50px"id="porcA1" name="porcA1" type="number" value="20" onchange="actualizarHonorarios(2);"/>%
        </div>
        <div class="details-form-field">
            <label for="honorariosAyudanteDosDictaminados">Honorarios Ayudante 2:</label>
            <input id="honorariosAyudanteDosDictaminados" name="honorariosAyudanteDosDictaminados" type="text" /><br>Aplicar: <input style="width:50px" id="porcA2" name="porcA2" type="number" value="15" onchange="actualizarHonorarios(3);"/>%
        </div>
        <div class="details-form-field">
            <label for="honorariosAnestesiologoDictaminados">Honorarios Anestesiólogo:</label>
            <input id="honorariosAnestesiologoDictaminados" name="honorariosAnestesiologoDictaminados" type="text" /><br>Aplicar: <input style="width:50px"id="porcAN" name="porcAN" type="number" value="30" onchange="actualizarHonorarios(4);" />%
        </div>
        <div class="details-form-field">
            <button type="submit" id="save">Save</button>
        </div>
    </form>
</div>
