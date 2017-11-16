$(document).ready(function() {
	$("#loadingMain").hide();
	$.ajax({
		async : false,
		data : {
			"idMedicoTratante" : 0,			
		},
		dataType : 'json',
		url : 'mvc/solicitud/getsolicitudesbymedtrat',
		type : 'post',
		beforeSend : function() {
			// $("#resultado").html("Procesando, espere por favor..."),
			// alert("OK!")
		},
		success : function(response) {
			console.log(response)
		    $('#solicitudesTable').DataTable( {
		        "lengthMenu": [[15, 30, 150, -1], [15, 30, 150, "All"]],
		        "data": response,"bDestroy": false
		 });			
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
});

function showDetalleMotivoRechazo(motivo){
	$("#mensajeDialogo").html(motivo.replace(/_/g," "));
	$( "#dialog-mensaje" ).dialog({
		  resizable: false,
	      height: 500,
	      width: 700,
	      modal: true,
	      buttons: {
	        Ok: function() {
	          $( this ).dialog( "close" );	   
	        }
	     }
	});
}