var db;
var dbInsumos;

$(document).ready(function() {    
  if ($("#idSolicitud").val()!=null && $("#idSolicitud").val()!=""){	  
	  cargarSolicitud($("#idSolicitud").val());
	  cargarGrid();
	  cargarGridInsumos();	  
	  $( ".jsgrid-grid-body" ).css( "height", "auto" );
  }
  $("#loadingMain").hide();
});

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
			$("#divDatosTitular").html("<font color='darkblue'>Nombre: </font>" + response.nombreBeneficiarioSolicitudCirugiaProgramada + " " + response.apPBeneficiarioSolicitudCirugiaProgramada + " " + response.apMBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Edad: </font>" + response.edadBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Sexo: </font>" + response.sexoBeneficiarioSolicitudCirugiaProgramada + " ");
			$("#divDatosBeneficiario").html("<font color='blue'>Nombre: </font>" + response.nombreBeneficiarioSolicitudCirugiaProgramada + " " + response.apPBeneficiarioSolicitudCirugiaProgramada + " " + response.apMBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Edad: </font>" + response.edadBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Sexo: </font>" + response.sexoBeneficiarioSolicitudCirugiaProgramada + " ");		
			$("#divDatosEmpresaBeneficiario").html("<font color='blue'>Empresa: </font>: " + response.empresaBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Número Nómina: </font>" + response.numNominaBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> Tipo Solicitud: </font>" +tipoSolicitud[response.tipoSolicitudCirugiaProgramada]+"<font color='blue'> Fecha de Elaboración: </font>2017-10-14");
			$("#idSolicitud").val();
			getCirugiaSolicitadaGridProcedimientos(response.idSolicitudCirugiaProgramada);
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

function cargarGrid(){
	  $("#jsGrid").jsGrid({
	        height: "70%",
	        width: "100%",
	        editing: true,
	        autoload: true,
	        paging: true,
	        deleteConfirm: function(item) {
	            return "The procedimiento \"" + item.Name + "\" will be removed. Are you sure?";
	        },
	        rowClick: function(args) {
	            showDetailsDialog("Edit", args.item);
	        },
	        controller: db,
	        fields: [
	        	{ name: "cpt.descripcion", type: "label", title:'Procedimiento', width: 150, validate: "required" },
	        	{ name: "autorizado", type: "label", title:'Procedimiento', width: 150, validate: "required" },
	            /*{ name: "cpt.autorizado", type: "select", title:'¿autorizado?', items: db.opciones, valueField: "Id", textField: "opcion",
	                validate: { message: "Country should be specified", validator: function(value) { return value > 0; } } },]*/
	            { name: "honorariosMedicosDictaminados", type: "text",  title:'Honorarios Médicos', width: 150, validate: "required" },
	            { name: "honorariosAyudanteUnoDictaminados", type: "text",  title:'Honorarios Ayudante 1', width: 150, validate: "required" },
	            { name: "honorariosAyudanteDosDictaminados", type: "text",  title:'Honorarios Ayudante 2', width: 150, validate: "required" },
	            { name: "honorariosAnestesiologoDictaminados", type: "text",  title:'Honorarios Anestesiólogo', width: 150, validate: "required" },
	            {
	                type: "control",
	                modeSwitchButton: false,
	                editButton: false,
	                headerTemplate: function() {
	                    return $("<button>").attr("type", "button").text("Add")
	                            .on("click", function () {
	                                showDetailsDialog("Add", {});
	                            });
	                }
	            }
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
//
	    $("#detailsForm").validate({
	        rules: {
	        	honorariosMedicosDictaminados: "required",
	        	honorariosAyudanteUnoDictaminados: "required",	        	
	        	honorariosAnestesiologoDictaminados: "required",
	            autorizado: "required"
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
	    	console.log(procedimiento)
	        $("#procedimiento").val(procedimiento.cpt.descripcion);
	        $("#autorizado").val(procedimiento.autorizado);
	        $("#honorariosMedicosDictaminados").val(procedimiento.honorariosMedicosDictaminados);
	        $("#honorariosAyudanteUnoDictaminados").val(procedimiento.honorariosAyudanteUnoDictaminados);
	        $("#honorariosAyudanteDosDictaminados").val(procedimiento.honorariosAyudanteDosDictaminados);
	        $("#honorariosAnestesiologoDictaminados").val(procedimiento.honorariosAnestesiologoDictaminados);
	        
	        formSubmitHandler = function() {
	            saveprocedimiento(procedimiento, dialogType === "Add");
	        };

	        $("#detailsDialog").dialog("option", "title", dialogType + " procedimiento")
	                .dialog("open");
	    };

	    var saveprocedimiento = function(procedimiento, isNew) {
	        $.extend(procedimiento, {	        			        		      
		        autorizado:$("#autorizado").val(),
		        honorariosMedicosDictaminados: $("#honorariosMedicosDictaminados").val(),
		        honorariosAyudanteUnoDictaminados: $("#honorariosAyudanteUnoDictaminados").val(),
		        honorariosAnestesiologoDictaminados: $("#honorariosAnestesiologoDictaminados").val()
	        });

	        $("#jsGrid").jsGrid(isNew ? "insertItem" : "updateItem", procedimiento);

	        $("#detailsDialog").dialog("close");
	    };

}

function getCirugiaSolicitadaGridInsumos(insumos){
	var insumos = insumos;
	dbInsumos = {
	        loadData: function(filter) {
	            return $.grep(this.insumos, function(insumo) {
	            	console.log(insumo);
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
	        	var ProcedimientoIndex = $.inArray(updatingProcedimiento, this.Procedimientos);
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
        	var ProcedimientoIndex = $.inArray(updatingProcedimiento, this.Procedimientos);
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


function cargarGridInsumos(){
	  $("#jsGridInsumos").jsGrid({
	        height: "70%",
	        width: "100%",
	        editing: true,
	        autoload: true,
	        paging: true,
	        deleteConfirm: function(item) {
	            return "The procedimiento \"" + item.Name + "\" will be removed. Are you sure?";
	        },
	        rowClick: function(args) {
	            showDetailsDialog("Edit", args.item);
	        },
	        controller: db,
	        fields: [
	        	{ name: "cpt.descripcion", type: "label", title:'Procedimiento', width: 150, validate: "required" },
	        	{ name: "autorizado", type: "label", title:'Procedimiento', width: 150, validate: "required" },
	            /*{ name: "cpt.autorizado", type: "select", title:'¿autorizado?', items: db.opciones, valueField: "Id", textField: "opcion",
	                validate: { message: "Country should be specified", validator: function(value) { return value > 0; } } },]*/
	            { name: "honorariosMedicosDictaminados", type: "text",  title:'Honorarios Médicos', width: 150, validate: "required" },
	            { name: "honorariosAyudanteUnoDictaminados", type: "text",  title:'Honorarios Ayudante 1', width: 150, validate: "required" },
	            { name: "honorariosAyudanteDosDictaminados", type: "text",  title:'Honorarios Ayudante 2', width: 150, validate: "required" },
	            { name: "honorariosAnestesiologoDictaminados", type: "text",  title:'Honorarios Anestesiólogo', width: 150, validate: "required" },
	            {
	                type: "control",
	                modeSwitchButton: false,
	                editButton: false,
	                headerTemplate: function() {
	                    return $("<button>").attr("type", "button").text("Add")
	                            .on("click", function () {
	                                showDetailsDialog("Add", {});
	                            });
	                }
	            }
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
//
	    $("#detailsForm").validate({
	        rules: {
	        	honorariosMedicosDictaminados: "required",
	        	honorariosAyudanteUnoDictaminados: "required",	        	
	        	honorariosAnestesiologoDictaminados: "required",
	            autorizado: "required"
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
	    	console.log(procedimiento)
	        $("#procedimiento").val(procedimiento.cpt.descripcion);
	        $("#autorizado").val(procedimiento.autorizado);
	        $("#honorariosMedicosDictaminados").val(procedimiento.honorariosMedicosDictaminados);
	        $("#honorariosAyudanteUnoDictaminados").val(procedimiento.honorariosAyudanteUnoDictaminados);
	        $("#honorariosAyudanteDosDictaminados").val(procedimiento.honorariosAyudanteDosDictaminados);
	        $("#honorariosAnestesiologoDictaminados").val(procedimiento.honorariosAnestesiologoDictaminados);
	        
	        formSubmitHandler = function() {
	            saveprocedimiento(procedimiento, dialogType === "Add");
	        };

	        $("#detailsDialog").dialog("option", "title", dialogType + " procedimiento")
	                .dialog("open");
	    };

	    var saveprocedimiento = function(procedimiento, isNew) {
	        $.extend(procedimiento, {	        			        		      
		        autorizado:$("#autorizado").val(),
		        honorariosMedicosDictaminados: $("#honorariosMedicosDictaminados").val(),
		        honorariosAyudanteUnoDictaminados: $("#honorariosAyudanteUnoDictaminados").val(),
		        honorariosAnestesiologoDictaminados: $("#honorariosAnestesiologoDictaminados").val()
	        });

	        $("#jsGrid").jsGrid(isNew ? "insertItem" : "updateItem", procedimiento);

	        $("#detailsDialog").dialog("close");
	    };

}
