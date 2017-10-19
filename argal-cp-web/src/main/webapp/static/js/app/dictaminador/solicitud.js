$(document).ready(function() {    
  if ($("#idSolicitud").val()!=null && $("#idSolicitud").val()!="") 
	  cargarSolicitud($("#idSolicitud").val());
});

function guardar(){
	console.log($("#sexobenefradiobutton").val());
	$.ajax({
		async : false,
		data : {
			"idSolicitudCirugiaProgramada" : $("#idSolicitud").val(),
			"nombreBeneficiarioSolicitudCirugiaProgramada" : $("#nombrePaciente").val(),
			"apPBeneficiarioSolicitudCirugiaProgramada" : $("#apellidoP").val(),
			"apMBeneficiarioSolicitudCirugiaProgramada" : $("#apellidoM").val(),
			"edadBeneficiarioSolicitudCirugiaProgramada" : $("#edad").val(),
			"sexoBeneficiarioSolicitudCirugiaProgramada" : $("#sexobenefradiobutton").val(),
			"numNominaBeneficiarioSolicitudCirugiaProgramada" : $("#numNomina").val(),
			"tipoSolicitudCirugiaProgramada" : $("#tipoCirugiaSel").val(),
			"empresaBeneficiarioSolicitudCirugiaProgramada" : $("#empresa").val()
		},
		dataType : 'json',
		url : 'mvc/solicitud/guardar_solicitud',
		type : 'post',
		beforeSend : function() {
			// $("#resultado").html("Procesando, espere por favor..."),
			// alert("OK!")
		},
		success : function(response) {
			alert(response)
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada);
			$("#idSolicitud").val(response.idSolicitudCirugiaProgramada);
			// console.log(response)
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
}

function cargarSolicitud(){
	$.ajax({
		async : false,
		data : {
			"idSolicitudCirugiaProgramada" : $("#idSolicitud").val()
		},
		dataType : 'json',
		url : 'mvc/solicitud/getsolicitudbyid',
		type : 'post',
		beforeSend : function() {
			// $("#resultado").html("Procesando, espere por favor..."),
			// alert("OK!")
		},
		success : function(response) {
			console.log(response)
			var tipoSolicitud=["","CORTA ESTANCIA","PROGRAMADA"];
			$("#divDatosBeneficiario").html("<font color='blue'>Nombre: </font>" + response.nombreBeneficiarioSolicitudCirugiaProgramada + " " + response.apPBeneficiarioSolicitudCirugiaProgramada + " " + response.apMBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Edad: </font>" + response.edadBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Sexo: </font>" + response.sexoBeneficiarioSolicitudCirugiaProgramada + " ");		
			$("#divDatosEmpresaBeneficiario").html("<font color='blue'>Empresa: </font>: " + response.empresaBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Número Nómina: </font>" + response.numNominaBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Tipo Solicitud: </font>" +tipoSolicitud[response.tipoSolicitudCirugiaProgramada]+"<font color='blue'> Fecha de Elaboración: </font>2017-10-14");
			$("#idSolicitud").val(response.idSolicitudCirugiaProgramada);
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
}


function cargarIcdCpt(){			  	
	/*	$(window).resize(function() {
	        $( "#gridIcd" ).dialog( "option", "position", { my: "top", at: "top", of: window } );
		});*/		
		$.ajax({
			method:"post",
			async:false,
			url: "mvc/icd/geticds"
	   	}).done(function(data) {
	   		//console.log(data)
	   		$("#tablaGridIcds").DataTable( {
	        "lengthMenu": [[15, 30, 150, -1], [15, 30, 150, "All"]],
	        "data": data,"bDestroy": false
	   		});
	   	});
	   	$.ajax({
				method:"post",
				async:false,
			  	url: "mvc/cpt/getcpts"
		   	}).done(function(data) {   		   		   			   			   		   	
		   		$("#tablaGridCpts").DataTable( {
		        "lengthMenu": [[15, 30, 150, -1], [15, 30, 150, "All"]],
		        "data": data,"bDestroy": false
		 });
	});
}

function loadWindowIcd(numIcd){
	$( "#icdSelHidden").val(numIcd);
	$( "#gridIcd" ).dialog({
		 resizable: false,
	      height: 700,
	      width: 1200,
	      position: { my: "top", at: "top", of: window },
	      modal: true		     
	});					
}

function loadWindowCpt(numCpt){
	$( "#cptSelHidden").val(numCpt);
	$( "#gridCpt" ).dialog({
		 resizable: false,
	      height: 700,
	      width: 1200,
	      position: { my: "top", at: "top", of: window },
	      modal: true		     
	});					
}

function selectIcd(valor,valor2){
	$( "#idIcd1"+$( "#icdSelHidden").val()).val(valor);
	$( "#icd"+$( "#icdSelHidden").val()).val(valor2);
	$( "#gridIcd" ).dialog('close');		 
}


function selectCpt(valor,valor2){
	$( "#idCpt1"+$( "#cptSelHidden").val()).val(valor);
	$( "#cpt"+$( "#cptSelHidden").val()).val(valor2);
	$( "#gridCpt" ).dialog('close');		 
}

function nextTab(id){
	$( "#accordion" ).accordion({ active: id });
}