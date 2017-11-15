$(document).ready(function() {  
	$.ajax({
		async : false,
		data : {
			"status" : 0,			
		},
		dataType : 'json',
		url : 'mvc/dictaminador/getsolicitudesdictaminador',
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
			$("#loadingMain").hide();
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
});