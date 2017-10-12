<div align="center" id="alertasCookies">		
	<div id="loadingAlertasDiv">
		<img src="static/img/v2.0/img/loadingAlertas.gif" height="100" width="100" id="imgHospitalesImagen" name="imgHospitales">		
	</div>	
	<form name="altaHospform" id="altaHospform" class="register">
		<table border=0 width="80%">
		<tr>
		<td>	
		<legend id="legendAlerta"><img src="static/img/v2.0/img/alertaArgal.png" height="50" width="60" id="imgCte122" name="imgCte122"/> Alertas en Eventos			
		</legend>		
		</td>
		<td>
		<a style="position:20px;"href="#" onclick="ajax_download_reporte_alertas()">Obtener Reporte<img src="static/img/v2.0/img/excel1.png" height="60" width="60"></a>
		</td>
		</tr>
		</table>
		Alertas Altas <img src="static/img/v2.0/img/Icono_Alerta.png" width="21" height="19" /></th>		
		Alertas Moderadas<img src="static/img/v2.0/img/alertaAmarilla.png" width="25" height="25" /></th>			

	</form>	
	<table style="backgroundColor="#FFFFFF" id="tablaGridAlertas" class="display" cellspacing="0" width="100%">
		<thead>
	    	<tr>
	     		<th>Categoria</th>
	         	<th>Folio Alerta</th>	         	
	         	<th>Evento</th>
	         	<th>Hospital</th>
	         	<th>Paciente</th>
	         	<th>Implant</th>
	         	<th>Fecha</th>
	         	<th width=400>Descripcion</th>	         
			 	<th>¿Bloquear?</th>	                  				                				              
	     	</tr>
		</thead>
		<tbody align="center">
		</tbody>
	</table>
	<div id="checkboxOcultar"  class="mensageAlertasView" style = "padding-top:50px;" >  <input id="ocultar" type="checkbox" />No mostrar Alertas al inicio por el día de hoy </div>
	<div id="checkboxEliminar" class="mensageAlertasView" style = "padding-top:50px;"> <input id="eliminar" type="checkbox"  />Volver a mostrar Alertas al inicio </div>
		<div id="dialog-message-alertas" title="Ocultar alertas" style="display: none" align="center">					
			<p>¿No mostrar alertas al inicio por el día de hoy?</p>					
		</div>
		<div id="dialog-message-mostrar" title="Aviso" style="display: none" align="center">					
			<div id="mensajeMostrar"></div>					
		</div>
		<div id="dialog-message-bloquear-Alerta" title="¿Bloquear Implant?" style="display: none" align="center">					
					<p>¿Seguro que desea bloquear Implant?</p>					
		</div>
	
			
</div>		