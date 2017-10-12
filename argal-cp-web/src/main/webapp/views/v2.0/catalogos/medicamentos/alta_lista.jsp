<br><br><br>
<form name="form6" id="form6" method="post" action="../../mvc/cont/uploadlistamedicamentosfile" enctype="multipart/form-data">
	<div id="waitUpload" style="display:none">
	<div><h4>Subiendo Lista de Precios....</h4></div>
	<div><h4><img src="../../static/img/v2.0/img/loadingEvent.gif" /></h4></div>
	</div> 			  	  							  	  			
	<span style="color: #6688a6;">SELECCIONE EL ARCHIVO CON LA LISTA DE PRECIOS:</span><BR>
	<input name="file6" id="file6" type="file" /><br/>
	<input name="idArchivoLista" id="idArchivoLista" type="hidden" value=""/>
	<br>
	<br>
	<div align="center"><button type="button" onclick="guardarListaPreciosMedicamentos();" id="buttonGuardarEvento" class="myButton">Guardar Lista</button></div>																											
</form>