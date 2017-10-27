$(document).ready(function() {  
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
			"empresa.idEmpresa" : $("#empresa").val()
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
			"cirugiaSolicitadaUno.numCirugia" : 1,
			"cirugiaSolicitadaDos.idCirugiaSolicitada" : $("#idCirugia2").val(),
			"cirugiaSolicitadaDos.diagnosticoIngreso.idIcd" : $("#idIcd7").val(),
			"cirugiaSolicitadaDos.diagnosticoIngreso.id" : $("#idIcd7").val(),
			"cirugiaSolicitadaDos.fundamentosDiagnostico": $("#fundamentosDiagnostico2").val(),
			"cirugiaSolicitadaDos.numCirugia" : 2
		},
		dataType : 'json',
		url : 'mvc/solicitud/guardar_solicitud_p2',
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
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada);
			$("#idSolDiv").html("Solicitud:"+response.idSolicitudCirugiaProgramada+"<input type='hidden' id='idSolicitud' name='idSolicitud' value='" + response.idSolicitudCirugiaProgramada +"'/>");
			// console.log(response)
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
	$( "#idCpt"+$( "#cptSelHidden").val()).val(valor);
	$( "#cpt"+$( "#cptSelHidden").val()).val(valor2);
	$( "#gridCpt" ).dialog('close');		 
}

function nextTab(id){
	$( "#accordion" ).accordion({ active: id });
}

function cargarGrid(){	
	$("#jsGrid").jsGrid({
        height: "70%",
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
        controller: db,
        fields: [
            { name: "cpt.descripcion", type: "label", title:'Procedimiento', width: 150, validate: "required" },
            { name: "cpt.autorizado", type: "select", title:'¿Autorizar?', items: db.opciones, valueField: "Id", textField: "opcion",
                validate: { message: "Country should be specified", validator: function(value) { return value > 0; } } },
            { name: "honorariosMedicosDictaminados", type: "text",  title:'Honorarios Médicos', width: 150, validate: "required" },
            { name: "honorariosAyudanteUnoDictaminados", type: "text",  title:'Honorarios Ayudante 1', width: 150, validate: "required" },
            { name: "honorariosAyudanteDosDictaminados", type: "text",  title:'Honorarios Ayudante 2', width: 150, validate: "required" },
            { name: "honorariosAnestesiologoDictaminados", type: "text",  title:'Honorarios Anestesiólogo', width: 150, validate: "required" },            
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

function getCirugiaSolicitadaGridProcedimientos(id){	
	var cirugiaProgramada;
	$.ajax({
		  async:false,
		  url: "mvc/solicitud/getcirugiabyid?id="+id,		  
		})
		  .done(function( data ) {
		    if ( console && console.log ) {
		    	console.log("Cirugia Obtenida");
		      console.log(data);
		      cirugiaProgramada=data;
		    }
    });
	console.log(cirugiaProgramada);
    db = {
        loadData: function(filter) {
            return $.grep(this.procedimientos, function(procedimiento) {
            	console.log(procedimiento);
            	console.log("--");
                return (!filter.id || procedimiento.id.indexOf(filter.id) > -1)
                    && (!filter.descripcion || procedimiento.descripcion === filter.descripcion)
                    && (!filter.descripcion || procedimiento.descripcion.indexOf(filter.descripcion) > -1)
                    && (!filter.descripcion || procedimiento.descripcion === filter.Country)
                    && (filter.descripcion === undefined || procedimiento.descripcion === filter.Married);
            });
        },

        insertItem: function(insertingProcedimiento) {
            this.Procedimientos.push(insertingProcedimiento);
        },

        updateItem: function(updatingProcedimiento) {
        	alert(updatingProcedimiento);
        	console.log(updatingProcedimiento)
        },

        deleteItem: function(deletingProcedimiento) {
            var ProcedimientoIndex = $.inArray(deletingProcedimiento, this.Procedimientos);
            this.Procedimientos.splice(ProcedimientoIndex, 1);
        }

    };

    window.db = db;


    db.opciones = [
        { opcion: "seleccione.....", Id: 0 },
        { opcion: "SI", Id: 1 },
        { opcion: "NO", Id: 2 }
    ];

    db.procedimientos = new Array();
    if (cirugiaProgramada.procedimientoUno!=null)
    	db.procedimientos.push(cirugiaProgramada.procedimientoUno);
    if (cirugiaProgramada.procedimientoDos!=null)
    	db.procedimientos.push(cirugiaProgramada.procedimientoDos);
    if (cirugiaProgramada.procedimientoTres!=null)
    	db.procedimientos.push(cirugiaProgramada.procedimientoTres);

}