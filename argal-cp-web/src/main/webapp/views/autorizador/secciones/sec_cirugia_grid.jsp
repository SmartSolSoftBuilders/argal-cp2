<div id="divIcdCirugia"></div>
<div id="divProcedimiento1Dictaminar"></div>
<div id="divProcedimiento2Dictaminar"></div>
<div id="divProcedimiento3Dictaminar"></div>
<div id="divProcedimiento1Negociar"></div>
<div id="divProcedimiento2Negociar"></div>
<div id="divProcedimiento3Negociar"></div>

<div id="jsGrid">
</div>

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