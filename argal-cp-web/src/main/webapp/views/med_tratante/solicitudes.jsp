<link href="static/css_acc/reset.min.css" rel="stylesheet" type="text/css" />
<link href="static/css_acc/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="static/css_acc/style_acc.css">
<link href="static/js/lib/form/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<script src="static/js/lib/form/jquery.validate.js"></script>
<script src="static/js/lib/form/bootstrap.min.js"></script>
<script src="static/js/lib/form/additional-methods.js"></script>
<script src="static/js/app/solicitud/solicitudes.js"></script>
<link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" />
<form>
	<h2>Cirug�as Programadas</h2>
	Todas <input type="radio">Pendientes <input type="radio">
	<br>
	<br>
	<table id="solicitudesTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
            	<th>FOLIO</th>
                <th>PACIENTE</th>
                <th>HOSPITAL</th>
                <th>PROCEDIMIENTO</th>
                <th>FECHA ELABORACI�N</th>
                <th>ESTATUS</th>
                <th>ACCIONES</th>                
            </tr>
        </thead> 
        <tbody>
            <tr>
                <td>Nixon Thomas</td>
                <td>Centro M�dico Dalinde</td>
                <td>Procedimiento 1</td>
                <td>2017/02/02</td>
                <td>PENDIENTE</td>
                <td><a href="#" onclick="loadPageData(100,17)">Editar</a></td>                
            </tr>
            <tr>
                <td>Tiger Nixon</td>
                <td>�ngeles Pedregal</td>
                <td>Procedimiento 2</td>
                <td>2017/02/02</td>
                <td>ENVIADA</td>
                <th>-</th>                
            </tr>
            <tr>
                <td>Emiliano Zapata</td>
                <td>�ngeles Pedregal</td>
                <td>Procedimiento 2</td>
                <td>2017/02/02</td>
                <td>ACEPTADA</td>
                <th>-</th>                
            </tr>
            <tr>
                <td>Francisco Villa</td>
                <td>�ngeles Pedregal</td>
                <td>Procedimiento 2</td>
                <td>2017/02/02</td>
                <td>RECHAZADA</td>
                <th>-</th>                
            </tr>            
       </tbody>
     </table>
</form>


<div id="dialog-mensaje" title="Aviso" style="display:none;">
  <p>
    <span class="ui-icon ui-icon-circle-check" style="float:left; margin:0 7px 50px 0;"></span>
    <div id="mensajeDialogo"></div>
  </p>
</div>
