var accordionItems = new Array();
var insumos;
var dbInsumos;

$(document).ready(function() {
	$("#loadingMain").hide();
	crearAcordion();
	$("#tabs").tabs();
	$('#contact-form').validate({
    rules: {
      name: {
        minlength: 2,
        required: true
      },
      email: {
        required: true,
        email: true
      },
      message: {
        minlength: 2,
        required: true
      }
    },
    highlight: function(element) {
      $(element).closest('.control-group').removeClass('success').addClass('error');
    },
    success: function(element) {
      element.text('OK!').addClass('valid')
        .closest('.control-group').removeClass('error').addClass('success');          
    },
    submitHandler: function(form) {
        // do other things for a valid form
       guardar();
       return false;
     }
  });
  $('#cirugia-form').validate({
	    rules: {
	    	idIcd1: {
	    		minlength: 2,
	    		required: true
	      }
	    },
	    highlight: function(element) {
	      $(element).closest('.control-group').removeClass('success').addClass('error');
	    },
	    success: function(element) {
	      element.text('OK!').addClass('valid')
	        .closest('.control-group').removeClass('error').addClass('success');          
	    },
	    submitHandler: function(form) {
	        // do other things for a valid form
	    	guardar_p2();
	        return false;
	     }
	  });
  cargarIcdCpt();
  cargarEmpresas();
  cargarHospitales();
  if ($("#idSolicitud").val()!=null && $("#idSolicitud").val()!=""){	   
	  cargarSolicitud($("#idSolicitud").val());	  
  }
  setVarInsumos();
  cargarGridInsumos();  
  $("#loading").hide();
  $("#contenidoSolicitud").show();
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
			"empresa.idEmpresa" : $("#empresa").val()
		},
		dataType : 'json',
		url : 'mvc/solicitud/guardar_solicitud',
		type : 'post',
		beforeSend : function() {
			$("#loading").show();
			$("#contenidoSolicitud").hide();
		},
		success : function(response) {
			$("#loading").hide();
			$("#contenidoSolicitud").show();
			mensaje("La sección de datos del beneficiario fué guardada con éxito!");
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada);
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada+"<input type='hidden' id='idSolicitud' name='idSolicitud' value='" + response.idSolicitudCirugiaProgramada +"'/>");
			cargarSolicitud();
			// console.log(response)
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
}

function guardar_p2(){
	console.log("guardar"+$("#idIcd1").val())
	$.ajax({
		async : false,
		data : {
			"idSolicitudCirugiaProgramada" : $("#idSolicitud").val(),
			"cirugiaSolicitadaUno.idCirugiaSolicitada" : $("#idCirugia1").val(),
			"cirugiaSolicitadaUno.diagnosticoIngreso.idIcd" : $("#idIcd1").val(),
			"cirugiaSolicitadaUno.diagnosticoIngreso.id" : $("#idIcd1").val(),
			"cirugiaSolicitadaUno.fundamentosDiagnostico": $("#fundamentosDiagnostico1").val(),
			"cirugiaSolicitadaUno.procedimientoUno.idProcedimientoSolicitado" :  $("#idProcedimiento1").val(),
			"cirugiaSolicitadaUno.procedimientoUno.id" :  $("#idCpt1").val(),
			"cirugiaSolicitadaUno.procedimientoUno.numProcedimiento" :  1,
			"cirugiaSolicitadaUno.procedimientoDos.idProcedimientoSolicitado" :  $("#idProcedimiento2").val(),
			"cirugiaSolicitadaUno.procedimientoDos.id" :  $("#idCpt2").val(),
			"cirugiaSolicitadaUno.procedimientoDos.numProcedimiento" :  2,
			"cirugiaSolicitadaUno.procedimientoTres.idProcedimientoSolicitado" :  $("#idProcedimiento3").val(),
			"cirugiaSolicitadaUno.procedimientoTres.id" :  $("#idCpt3").val(),
			"cirugiaSolicitadaUno.procedimientoTres.numProcedimiento" :  3,
			"cirugiaSolicitadaUno.numCirugia" : 1,
			"cirugiaSolicitadaDos.idCirugiaSolicitada" : $("#idCirugia2").val(),
			"cirugiaSolicitadaDos.diagnosticoIngreso.idIcd" : $("#idIcd7").val(),
			"cirugiaSolicitadaDos.diagnosticoIngreso.id" : $("#idIcd7").val(),
			"cirugiaSolicitadaDos.fundamentosDiagnostico": $("#fundamentosDiagnostico2").val(),
			"cirugiaSolicitadaDos.numCirugia" : 2,
			"cirugiaSolicitadaUno.otrasEnfUno.id" : $("#idIcd2").val(),
			"cirugiaSolicitadaUno.otrasEnfDos.id" : $("#idIcd3").val(),
			"cirugiaSolicitadaUno.otrasEnfTres.id" : $("#idIcd4").val(),
			"cirugiaSolicitadaUno.otrasEnfCuatro.id" : $("#idIcd5").val(),
			"cirugiaSolicitadaUno.otrasEnfCinco.id" : $("#idIcd6").val()
		},
		dataType : 'json',
		url : 'mvc/solicitud/guardar_solicitud_p2',
		type : 'post',
		beforeSend : function() {
			// $("#resultado").html("Procesando, espere por favor..."),
			// alert("OK!")
		},
		success : function(response) {
			mensaje("La sección de datos de la cirugía fué guardada con éxito!");			
			cargarSolicitud(); 
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
}


function guardar_p3(){	
	var fechaProgramacion;
	var d2=new Date($("#fechaProgramacion").val());
	dt=d2.getDate();
	dt++;
	mn=d2.getMonth();
	mn++;
	yy=d2.getFullYear();
	fechaProgramacion=mn+"/"+dt+"/"+yy
	
	$.ajax({
		async : false,
		data : {
			"idSolicitudCirugiaProgramada" : $("#idSolicitud").val(),
			"fechaSolicitudCirugiaProgramada" : fechaProgramacion,
			"tiempoCirugia" : $("#tiempoCirugia").val(),
			"tiempoSalaRecuperacion" : $("#tiempoSalaRecuperacion").val(),
			"hospital.idHospital" : $("#hospital").val(),
			"resultadosPreoperatorios": $("#resultadosPreoperatorios").val(),
			"describirResultadosPreoperatorios": $("#desResultadosPreoperatorios").val()
		},
		dataType : 'json',
		url : 'mvc/solicitud/guardar_solicitud_p3',
		type : 'post',
		beforeSend : function() {
			$("#loading").show();
			$("#contenidoSolicitud").hide();
		},
		success : function(response) {
			$("#loading").hide();
			$("#contenidoSolicitud").show();
			mensaje("La sección de programación de la cirugía fué guardada con éxito!");
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada);
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada+"<input type='hidden' id='idSolicitud' name='idSolicitud' value='" + response.idSolicitudCirugiaProgramada +"'/>");
			cargarSolicitud();
			// console.log(response)
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
}

function guardar_p5(){		
	$.ajax({
		async : false,
		data : {
			"idSolicitudCirugiaProgramada" : $("#idSolicitud").val(),
			"riesgosQuirurgicosUno" : $("#riesgos1").val(),
			"riesgosQuirurgicosDos" : $("#riesgos2").val(),
			"riesgosQuirurgicosTres" : $("#riesgos3").val(),
			"riesgosQuirurgicosCuatro" : $("#riesgos4").val(),			
			"nombreAyudanteUno" : $("#nombreAyudanteUno").val(),
			"nombreAyudanteDos" : $("#nombreAyudanteDos").val(),
			"nombreAnestesiologo" : $("#nombreAnestesiologo").val()			
		},
		dataType : 'json',
		url : 'mvc/solicitud/guardar_solicitud_p5',
		type : 'post',
		beforeSend : function() {
			$("#loading").show();
			$("#contenidoSolicitud").hide();
		},
		success : function(response) {
			$("#loading").hide();
			$("#contenidoSolicitud").show();
			mensaje("La sección de personal requerido y riesgos de la cirugía fué guardada con éxito!");
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada);
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada+"<input type='hidden' id='idSolicitud' name='idSolicitud' value='" + response.idSolicitudCirugiaProgramada +"'/>");
			cargarSolicitud();
			// console.log(response)
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
}

function cargarSolicitud(){
	$("#loading").show();
	$("#contenidoSolicitud").hide();
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
			$("#loading").hide();
			$("#contenidoSolicitud").show();
			$("#nombrePaciente").val(response.nombreBeneficiarioSolicitudCirugiaProgramada);
			$("#apellidoP").val(response.apPBeneficiarioSolicitudCirugiaProgramada);
			$("#apellidoM").val(response.apMBeneficiarioSolicitudCirugiaProgramada);
			$("#edad").val(response.edadBeneficiarioSolicitudCirugiaProgramada);
			console.log($("input[name='sexobenefradiobutton'][value=" + response.sexoBeneficiarioSolicitudCirugiaProgramada + "]"));
			$("input[name='sexobenefradiobutton'][value=" + response.sexoBeneficiarioSolicitudCirugiaProgramada + "]").attr('checked', 'checked');
			$('input[name="sexobenefradiobutton"]').filter("[value='"+response.sexoBeneficiarioSolicitudCirugiaProgramada+"']").attr('checked', true);
			$("#numNomina").val(response.numNominaBeneficiarioSolicitudCirugiaProgramada);
			$("#tipoCirugiaSel").val(response.tipoSolicitudCirugiaProgramada);
			$("#empresa").val(response.empresaBeneficiarioSolicitudCirugiaProgramada);
			$("#fechaProgramacion").val(response.fechaSolicitudCirugiaProgramada);
			$("#tiempoCirugia").val(response.tiempoCirugia);			
			$("#tiempoSalaRecuperacion").val(response.tiempoSalaRecuperacion);			
			$("#hospital").val(response.hospital.idHospital);
			$("#resultadosPreoperatorios").val(response.resultadosPreoperatorios);
			$("#desResultadosPreoperatorios").val(response.describirResultadosPreoperatorios);
			//			
			$("#riesgos1").val(response.riesgosQuirurgicosUno);
			$("#riesgos2").val(response.riesgosQuirurgicosDos);
			$("#riesgos3").val(response.riesgosQuirurgicosTres);
			$("#riesgos4").val(response.riesgosQuirurgicosCuatro);			
			$("#nombreAyudanteUno").val(response.nombreAyudanteUno);
			$("#nombreAyudanteDos").val(response.nombreAyudanteDos);
			$("#nombreAnestesiologo").val(response.nombreAnestesiologo);
			//
			
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada);
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada+"<input type='hidden' id='idSolicitud' name='idSolicitud' value='" + response.idSolicitudCirugiaProgramada +"'/>");			
			console.log(response)
			//Cargar icdscpts			
			if (response.cirugiaSolicitadaUno!=null){
				$("#idCirugia1").val(response.cirugiaSolicitadaUno.idCirugiaSolicitada);			
				$("#idIcd1").val(response.cirugiaSolicitadaUno.diagnosticoIngreso.idIcd);
				$("#icd1").val(response.cirugiaSolicitadaUno.diagnosticoIngreso.descripcion);
				$("#fundamentosDiagnostico1").val(response.cirugiaSolicitadaUno.fundamentosDiagnostico);
				if (response.cirugiaSolicitadaUno.procedimientoUno!=null){
					$("#idProcedimiento1").val(response.cirugiaSolicitadaUno.procedimientoUno.idProcedimientoSolicitado);
					$("#idCpt1").val(response.cirugiaSolicitadaUno.procedimientoUno.cpt.idCpt);
					$("#cpt1").val(response.cirugiaSolicitadaUno.procedimientoUno.cpt.descripcion);
				}
				if (response.cirugiaSolicitadaUno.procedimientoDos!=null){
					$("#idProcedimiento2").val(response.cirugiaSolicitadaUno.procedimientoDos.idProcedimientoSolicitado);
					$("#idCpt2").val(response.cirugiaSolicitadaUno.procedimientoDos.cpt.idCpt);
					$("#cpt2").val(response.cirugiaSolicitadaUno.procedimientoDos.cpt.descripcion);
				}
				if (response.cirugiaSolicitadaUno.procedimientoTres!=null){
					$("#idProcedimiento2").val(response.cirugiaSolicitadaUno.procedimientoTres.idProcedimientoSolicitado);
					$("#idCpt2").val(response.cirugiaSolicitadaUno.procedimientoTres.cpt.idCpt);
					$("#cpt2").val(response.cirugiaSolicitadaUno.procedimientoTres.cpt.descripcion);
				}
				if (response.cirugiaSolicitadaUno.otrasEnfUno!=null){
					$("#idIcd2").val(response.cirugiaSolicitadaUno.otrasEnfUno.idIcd);
					$("#icd2").val(response.cirugiaSolicitadaUno.otrasEnfUno.descripcion);
				}
				if (response.cirugiaSolicitadaUno.otrasEnfDos!=null){
					$("#idIcd3").val(response.cirugiaSolicitadaUno.otrasEnfDos.idIcd);
					$("#icd3").val(response.cirugiaSolicitadaUno.otrasEnfDos.descripcion);
				}
				if (response.cirugiaSolicitadaUno.otrasEnfTres!=null){
					$("#idIcd4").val(response.cirugiaSolicitadaUno.otrasEnfTres.idIcd);
					$("#icd4").val(response.cirugiaSolicitadaUno.otrasEnfTres.descripcion);
				}
				if (response.cirugiaSolicitadaUno.otrasEnfCuatro!=null){
					$("#idIcd5").val(response.cirugiaSolicitadaUno.otrasEnfCuatro.idIcd);
					$("#icd5").val(response.cirugiaSolicitadaUno.otrasEnfCuatro.descripcion);
				}
				if (response.cirugiaSolicitadaUno.otrasEnfCinco!=null){
					$("#idIcd6").val(response.cirugiaSolicitadaUno.otrasEnfCinco.idIcd);
					$("#icd6").val(response.cirugiaSolicitadaUno.otrasEnfCinco.descripcion);
				}
				
				
			}
/*		
			response.cirugiaSolicitadaUno.fundamentosDiagnostico": $("#fundamentosDiagnostico1").val(),
			
			response.cirugiaSolicitadaUno.procedimientoDos.id" :  $("#idCpt2").val(),
			response.cirugiaSolicitadaUno.procedimientoTres.id" :  $("#idCpt3").val(),
			response.cirugiaSolicitadaUno.numCirugia" : 1,
			response.cirugiaSolicitadaDos.idCirugiaSolicitada" : $("#idCirugia2").val(),
			response.cirugiaSolicitadaDos.diagnosticoIngreso.idIcd" : $("#idIcd7").val(),
			response.cirugiaSolicitadaDos.diagnosticoIngreso.id" : $("#idIcd7").val(),
			response.cirugiaSolicitadaDos.fundamentosDiagnostico": $("#fundamentosDiagnostico2").val(),
			response.cirugiaSolicitadaDos.numCirugia" : 2*/
			insumos=response.insumos;
		},
		error : function(response) {
			alert("error cargando la solicitud!")
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


function cargarHospitales(){
	$.ajax({
		method:"post",
		async:false,
		url: "mvc/hospital/gethospitalesactivos"
	  	}).done(function(data) {
	  		//console.log(data)
	  		var optionsAsString = "";   		
	   		for (i=0;i<data.length;i++){   			   		
	   		    optionsAsString += "<option value='" + data[i].idHospital + "'>" + data[i].nombreHospital + "</option>";
			}      		
	   		$( 'select[name="hospital"]' ).append( optionsAsString );
	 });	
}
function cargarEmpresas(){			  	
	$.ajax({
		method:"post",
		async:false,
		url: "mvc/empresa/getempresasactivas"
	  	}).done(function(data) {
	  		//console.log(data)
	  		var optionsAsString = "";   		
	   		for (i=0;i<data.length;i++){   			   		
	   		    optionsAsString += "<option value='" + data[i].idEmpresa + "'>" + data[i].nombreCorto + "</option>";
			}      		
	   		$( 'select[name="empresa"]' ).append( optionsAsString );
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
	$( "#idIcd"+$( "#icdSelHidden").val()).val(valor);
	$( "#icd"+$( "#icdSelHidden").val()).val(valor2);
	$( "#gridIcd" ).dialog('close');		 
}


function selectCpt(valor,valor2){
	console.log("valor"+valor+"-"+valor2)
	$( "#idCpt"+$( "#cptSelHidden").val()).val(valor);
	$( "#cpt"+$( "#cptSelHidden").val()).val(valor2);
	$( "#gridCpt" ).dialog('close');		 
}

function nextTab(id){
	$( "#accordion" ).accordion({ active: id });
}

function cargarGridInsumos(){	
	$("#jsGridInsumos").jsGrid({
        height: "90%",
        width: "100%",
        filtering: false,
        editing: true,
        inserting: true,
        sorting: true,
        paging: true,
        autoload: true,
        pageSize: 15,
        pageButtonCount: 5,
        deleteConfirm: "Do you really want to delete the Procedimiento?",
        controller: dbInsumos,
        fields: [
            { name: "idInsumo", type: "label", title:'Folio Insumo Solicitado', width: 150},            
            { name: "descripcion", type: "text",  title:'Descripción', width: 150, validate: "required" },
            { name: "monto", type: "text",  title:'Monto a Solicitar', width: 150, validate: "required" },                       
            { type: "control" }
        ]
    });
 

    $("#detailsDialog").dialog({
        autoOpen: false,
        width: 400,
        close: function() {
            $("#detailsForm").validate().resetForm();
            $("#detailsForm").find(".error").removeClass("error");
        }
    });

    $("#detailsForm").validate({
        rules: {
            name: "required",
            age: { required: true, range: [18, 150] },
            address: { required: true, minlength: 10 },
            country: "required"
        },
        messages: {
            name: "Please enter name",
            age: "Please enter valid age",
            address: "Please enter address (more than 10 chars)",
            country: "Please select country"
        },
        submitHandler: function() {
            formSubmitHandler();
        }
    });

    var formSubmitHandler = $.noop;

    var showDetailsDialog = function(dialogType, procedimiento) {
        $("#name").val(procedimiento.descripcion);
        $("#age").val(procedimiento.descripcion);
        $("#address").val(procedimiento.descripcion);
        $("#country").val(procedimiento.descripcion);
        $("#married").prop("checked", procedimiento.descripcion);

        formSubmitHandler = function() {
            saveprocedimiento(procedimiento, dialogType === "Add");
        };

        $("#detailsDialog").dialog("option", "title", dialogType + " procedimiento")
                .dialog("open");
    };

    var saveprocedimiento = function(procedimiento, isNew) {
        $.extend(procedimiento, {
            Name: $("#name").val(),
            Age: parseInt($("#age").val(), 10),
            Address: $("#address").val(),
            Country: parseInt($("#country").val(), 10),
            Married: $("#married").is(":checked")
        });

        $("#jsGrid").jsGrid(isNew ? "insertItem" : "updateItem", procedimiento);

        $("#detailsDialog").dialog("close");
    };
}

function setVarInsumos(){	
	console.log("insumos")
	console.log(insumos);
    dbInsumos = {
        loadData: function(filter) {
            return $.grep(this.insumos, function(insumo) {
            	console.log(insumo);
            	console.log("--");
                return (!filter.id || insumo.id.indexOf(filter.id) > -1)
                    && (!filter.descripcion || insumo.descripcion === filter.descripcion)
                    && (!filter.descripcion || insumo.descripcion.indexOf(filter.descripcion) > -1)
                    && (!filter.descripcion || insumo.descripcion === filter.descripcion)
                    && (filter.descripcion === undefined || insumo.descripcion === filter.descripcion);
            });
        },

        insertItem: function(insertingInsumo) {
        	console.log(insertingInsumo);
        	//Lógica para guardar el insumo nuevo
        	//descripcion, monto
        	var idIns = 0;
        	if (insertingInsumo.idInsumo!="")
        		idIns=insertingInsumo.idInsumo;
        	$.ajax({
        		async : false,
        		data : {
        			"id" : $("#idSolicitud").val(),
        			"idInsumo" : idIns,        			
        			"descripcion" : insertingInsumo.descripcion,
        			"monto" : insertingInsumo.monto
        		},
        		dataType : 'json',
        		url : 'mvc/solicitud/guardar_solicitud_p6',
        		type : 'post',
        		beforeSend : function() {
        			$("#loading").show();
        			$("#contenidoSolicitud").hide();
        		},
        		success : function(response) {
        			$("#loading").hide();
        			$("#contenidoSolicitud").show();
        			mensaje("El insumo fué guardado con éxito!");        			
        			cargarSolicitud();
        			// console.log(response)
        		},
        		error : function(response) {
        			alert("error!")
        			// console.log(response)
        		}
        	});
        	
            this.insumos.push(insertingInsumo);
        },

        updateItem: function(updatingInsumo) {
        	var idIns = 0;
        	if (updatingInsumo.idInsumo!="")
        		idIns=updatingInsumo.idInsumo;
        	$.ajax({
        		async : false,
        		data : {
        			"id" : $("#idSolicitud").val(),
        			"idInsumo" : idIns,        			
        			"descripcion" : updatingInsumo.descripcion,
        			"monto" : updatingInsumo.monto
        		},
        		dataType : 'json',
        		url : 'mvc/solicitud/guardar_solicitud_p6',
        		type : 'post',
        		beforeSend : function() {
        			$("#loading").show();
        			$("#contenidoSolicitud").hide();
        		},
        		success : function(response) {
        			$("#loading").hide();
        			$("#contenidoSolicitud").show();
        			mensaje("El insumo fué actualizado con éxito!");        			
        			cargarSolicitud();
        			// console.log(response)
        		},
        		error : function(response) {
        			alert("error!")
        			// console.log(response)
        		}
        	});
        },

        deleteItem: function(deletingInsumo) {
            var InsumoIndex = $.inArray(deletingInsumo, this.insumos);
            this.Insumos.splice(InsumoIndex, 1);
        }

    };

    window.dbInsumos = dbInsumos;


    dbInsumos.opciones = [
        { opcion: "seleccione.....", Id: 0 },
        { opcion: "SI", Id: 1 },
        { opcion: "NO", Id: 2 }
    ];

    dbInsumos.insumos = new Array();
    if (insumos!=null){
	    for (i=0;i<insumos.length;i++){		    
		    dbInsumos.insumos.push(insumos[i]);
	    }
    }
}


function crearAcordion(){
	$( "#accordionSolicitud" ).accordion({
		heightStyle: "content"
	});
}


function mensajeRedirect(msj){
	$( "#mensajeDialogo").html(msj);
	$( "#dialog-mensaje" ).dialog({
	      modal: true,
	      buttons: {
	        Ok: function() {
	          $( this ).dialog( "close" );
	          window.location.href="/argal-cp-web";
	        }
	     }
	});
}

function mensaje(msj){
	$( "#mensajeDialogo").html(msj);
	$( "#dialog-mensaje" ).dialog({
	      modal: true,
	      buttons: {
	        Ok: function() {
	          $( this ).dialog( "close" );
	        }
	     }
	});
}

function enviarSolicitud(){
	$.ajax({
		async : false,
		data : {
			"idSolicitudCirugiaProgramada" : $("#idSolicitud").val()			
		},
		dataType : 'json',
		url : 'mvc/solicitud/cambiarstatusenviada',
		type : 'post',
		beforeSend : function() {
			$("#loading").show();
			$("#contenidoSolicitud").hide();
		},
		success : function(response) {
			$("#loading").hide();
			$("#contenidoSolicitud").show();
			mensajeRedirect("La solicitud fué enviada con éxito!");        						
			// console.log(response)
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
}