<div id="jsGrid">

</div>

<div id="detailsDialog">
    <form id="detailsForm">
        <div class="details-form-field">
            <label for="procedimiento">Procedimiento:</label>
            <input id="procedimiento" name="procedimiento" type="text" readonly/>
        </div>        
        <div class="details-form-field">
            <label for="autorizado">¿autorizado?:</label>
            <select id="autorizado" name="autorizado">
                <option value="">(Select)</option>
                <option value="1">SI</option>
                <option value="2">NO</option>                
            </select>
        </div>
        <div class="details-form-field">
            <label for="honorariosMedicosDictaminados">Honorarios Médico:</label>
            <input id="honorariosMedicosDictaminados" name="honorariosMedicosDictaminados" type="text" />
        </div>
        <div class="details-form-field">
            <label for="honorariosAyudanteUnoDictaminados">Honorarios Ayudante 1:</label>
            <input id="honorariosAyudanteUnoDictaminados" name="honorariosAyudanteUnoDictaminados" type="text" />
        </div>
        <div class="details-form-field">
            <label for="honorariosAyudanteDosDictaminados">Honorarios Ayudante 2:</label>
            <input id="honorariosAyudanteDosDictaminados" name="honorariosAyudanteDosDictaminados" type="text" />
        </div>
        <div class="details-form-field">
            <label for="honorariosAnestesiologoDictaminados">Honorarios Anestesiólogo:</label>
            <input id="honorariosAnestesiologoDictaminados" name="honorariosAnestesiologoDictaminados" type="text" />
        </div>
        <div class="details-form-field">
            <button type="submit" id="save">Save</button>
        </div>
    </form>
</div>

Test