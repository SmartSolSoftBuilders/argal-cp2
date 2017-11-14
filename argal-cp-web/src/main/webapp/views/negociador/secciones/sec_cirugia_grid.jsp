<div id="divIcdCirugia"></div>
<div id="divProcedimiento1Negociar"></div>
<div id="divProcedimiento2Negociar"></div>
<div id="divProcedimiento3Negociar"></div>

<div id="jsGrid">
</div>

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