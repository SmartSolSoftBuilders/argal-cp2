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
			$("#divDatosTitular").html("<font color='darkblue'>NOMBRE DEL TITULAR: </font>" + response.nombreTitularSolicitudCirugiaProgramada + " " + response.apPTitularSolicitudCirugiaProgramada + " " + response.apMTitularSolicitudCirugiaProgramada + "<font color='darkblue'> Empresa: </font>" + response.empresa.nombreEmpresa + "<font color='darkblue'> Num Nómina/Cve: </font>" + response.numNominaBeneficiarioSolicitudCirugiaProgramada + " ");
			$("#divDatosBeneficiario").html("<font color='darkblue'>NOMBRE DEL PACIENTE: </font>" + response.nombreBeneficiarioSolicitudCirugiaProgramada + " " + response.apPBeneficiarioSolicitudCirugiaProgramada + " " + response.apMBeneficiarioSolicitudCirugiaProgramada + "<font color='darkblue'> EDAD: </font>" + response.edadBeneficiarioSolicitudCirugiaProgramada + "<font color='darkblue'> SEXO: </font>" + response.sexoBeneficiarioSolicitudCirugiaProgramada + " ");		
			$("#divDatosSolicitudBeneficiario").html("<font color='darkblue'> TIPO SOLICITUD: </font>" +tipoSolicitud[response.tipoSolicitudCirugiaProgramada]+"<font color='darkblue'> FECHA DE ELABORACIÓN: </font>2017-10-14");
			//$("#idSolicitud").val();
			getCirugiaSolicitadaGridProcedimientos(response.cirugiaSolicitadaUno);
			getCirugiaSolicitadaGridInsumos(response.insumos);
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
		}
	});	
}

function cargarGrid(){	
	$("#jsGrid").jsGrid({
	        height: "70%",
	        width: "100%",
	        editing: true,
	        autoload: true,
	        paging: true,
	        deleteConfirm: function(item) {
	            return "Procedimiento \"" + item.Name + "\" will be removed. Are you sure?";
	        },
	        rowClick: function(args) {
	            showDetailsDialog("Dictaminar", args.item);
	        },
	        controller: db,
	        fields: [
	        	/*{ name: "idProcedimientoSolicitado", type: "label", title:'Id Procedimiento', width: 150, validate: "required" },*/
	        	{ name: "cpt.descripcion", type: "text", title:'Procedimiento', width: 200, validate: "required" },
	        	{ name: "autorizado", type: "checkbox", title:'¿Autorizado?', width: 60, validate: "required" },
	            /*{ name: "cpt.autorizado", type: "select", title:'¿autorizado?', items: db.opciones, valueField: "Id", textField: "opcion",
	                validate: { message: "Country should be specified", validator: function(value) { return value > 0; } } },]*/
	            { name: "honorariosMedicosDictaminados", type: "text",  title:'Honorarios Médicos', width: 60, validate: "required" },
	            { name: "honorariosAyudanteUnoDictaminados", type: "text",  title:'Honorarios Ayudante 1', width: 60, validate: "required" },
	            { name: "honorariosAyudanteDosDictaminados", type: "text",  title:'Honorarios Ayudante 2', width: 60, validate: "required" },
	            { name: "honorariosAnestesiologoDictaminados", type: "text",  title:'Honorarios Anestesiólogo', width: 60, validate: "required" }/*,
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
	            }*/
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
	            autorizado: "Please enter name",
	            age: "Please enter valid age",
	            address: "Please enter address (more than 10 chars)",
	            country: "Please select country"
	        },
	        submitHandler: function() {
	        	//alert("OK")
	            formSubmitHandler();
	        }
	    });

	    var formSubmitHandler = $.noop;

	    var showDetailsDialog = function(dialogType, procedimiento) {
	    	console.log(procedimiento)
	        $("#procedimiento").val(procedimiento.cpt.descripcion);
	        $("#autorizado").val(procedimiento.autorizado);
	        $("#idProcedimientoSolicitado").val(procedimiento.idProcedimientoSolicitado);
	        
	        if (procedimiento.honorariosMedicosDictaminados=="" || procedimiento.honorariosMedicosDictaminados==null)
	        	$("#honorariosMedicosDictaminados").val(parseFloat($("#honorariosBase").val())*1);
	        else
	        	$("#honorariosMedicosDictaminados").val(procedimiento.honorariosMedicosDictaminados);
	        
	        if (procedimiento.honorariosAyudanteUnoDictaminados=="" || procedimiento.honorariosAyudanteUnoDictaminados==null)
	        	$("#honorariosAyudanteUnoDictaminados").val(parseFloat($("#honorariosBase").val())*0.20);
	        else
	        	$("#honorariosAyudanteUnoDictaminados").val(procedimiento.honorariosAyudanteUnoDictaminados);	        
	        if (procedimiento.honorariosAyudanteDosDictaminados=="" || procedimiento.honorariosAyudanteDosDictaminados==null)
	        	$("#honorariosAyudanteDosDictaminados").val(parseFloat($("#honorariosBase").val())*0.15);
	        else
	        	$("#honorariosAyudanteDosDictaminados").val(procedimiento.honorariosAyudanteDosDictaminados);
	        if (procedimiento.honorariosAnestesiologoDictaminados=="" || procedimiento.honorariosAnestesiologoDictaminados==null)
	        	$("#honorariosAnestesiologoDictaminados").val(parseFloat($("#honorariosBase").val())*0.30);
	        else
	        	$("#honorariosAnestesiologoDictaminados").val(procedimiento.honorariosAnestesiologoDictaminados);
	        
	        formSubmitHandler = function() {
	            saveprocedimiento(procedimiento, dialogType === "Add");
	        };

	        $("#detailsDialog").dialog("option", "title", dialogType + " Procedimiento")
	                .dialog("open");
	    };

	    var saveprocedimiento = function(procedimiento, isNew) {
	        $.extend(procedimiento, {	        			        		      
		        autorizado:$("#autorizado").val(),
		        idProcedimientoSolicitado : $("#idProcedimientoSolicitado").val(),
		        honorariosMedicosDictaminados: $("#honorariosMedicosDictaminados").val(),
		        honorariosAyudanteUnoDictaminados: $("#honorariosAyudanteUnoDictaminados").val(),
		        honorariosAyudanteDosDictaminados: $("#honorariosAyudanteDosDictaminados").val(),
		        honorariosAnestesiologoDictaminados: $("#honorariosAnestesiologoDictaminados").val()
	        });

	        $("#jsGrid").jsGrid(isNew ? "insertItem" : "updateItem", procedimiento);

	        $("#detailsDialog").dialog("close");
	    };
	$( ".jsgrid-grid-body" ).css( "height", "auto" );
}

function getCirugiaSolicitadaGridInsumos(insumos){
	console.log("insumos")
	console.log(insumos)
	dbInsumos = {
	        loadData: function(filter) {
	            return $.grep(this.insumos, function(insumo) {
	            	console.log(insumo);
	            	console.log("--");
	                return (!filter.id || insumo.id.indexOf(filter.id) > -1)
	                    && (!filter.descripcion || insumo.descripcion === filter.descripcion)
	                    && (!filter.descripcion || insumo.descripcion.indexOf(filter.descripcion) > -1)
	                    && (!filter.descripcion || insumo.descripcion === filter.Country)
	                    && (filter.autorizado === undefined  || insumo.autorizado === filter.autorizado);
	            });
	        },

	        insertItem: function(insertingInsumo) {
	            this.Insumos.push(insertingInsumo);
	        },

	        updateItem: function(updatingInsumo) {	        	
	        	console.log("INSUMO")
	        	console.log(updatingInsumo)
	        	var autorizado = false;
	        	if (updatingInsumo.autorizado==1)
	        		autorizado = true;
	        	$.ajax({
	        		async:false,
	        		data : {
	        			"idInsumo" :  updatingInsumo.idInsumo,
	        			"autorizado" : autorizado
	        		},
	        		dataType : 'json',
	        		type : 'post',
					url: "mvc/dictaminador/aceptar_rechazar_insumo"		  
					})
					  .done(function( data ) {
						mensaje("Se guardaron los cambios con éxito");									   
			    });

	        	console.log(updatingInsumo);	        	
	        	var InsumoIndex = $.inArray(updatingInsumo, this.Insumos);
	        },

	        deleteItem: function(deletingInsumo) {
	            var InsumoIndex = $.inArray(deletingInsumo, this.Insumos);
	            this.Insumos.splice(InsumoIndex, 1);
	        }

	    };

	    window.dbInsumos = dbInsumos;
	    db.insumos = new Array();
	    if (insumos!=null)
	    	dbInsumos.insumos=insumos;
}

function getCirugiaSolicitadaGridProcedimientos(cirugiaProgramada){	
	/*var cirugiaProgramada;
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
    });*/
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
                    && (filter.descripcion === undefined );
            });
        },

        insertItem: function(insertingProcedimiento) {
            this.Procedimientos.push(insertingProcedimiento);
        },

        updateItem: function(updatingProcedimiento) {        	
        	console.log(updatingProcedimiento)
        	var autorizado = false;
        	if (updatingProcedimiento.autorizado==1)
        		autorizado = true;
        	$.ajax({
        		async:false,
        		data : {
        			"idProcedimientoSolicitado" :  updatingProcedimiento.idProcedimientoSolicitado,
        			"honorariosMedicosDictaminados" : updatingProcedimiento.honorariosMedicosDictaminados,
        			"honorariosAyudanteUnoDictaminados" : updatingProcedimiento.honorariosAyudanteUnoDictaminados,
        			"honorariosAyudanteDosDictaminados" : updatingProcedimiento.honorariosAyudanteDosDictaminados,
        			"honorariosAnestesiologoDictaminados" : updatingProcedimiento.honorariosAnestesiologoDictaminados,
        			"autorizado" : autorizado
        		},
        		dataType : 'json',
        		type : 'post',
				url: "mvc/dictaminador/aceptar_rechazar_procedimiento"		  
				})
				  .done(function( data ) {
					mensaje("Se guardaron los cambios con éxito");
					cargarSolicitud($("#idSolicitud").val());
					cargarGrid();
				    var ProcedimientoIndex = $.inArray(updatingProcedimiento, this.Procedimientos);					    
		    });
        	
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
	  $("#jsGridInsumos").html("");
	  $("#jsGridInsumos").jsGrid({
	        height: "70%",
	        width: "100%",
	        editing: true,
	        autoload: true,
	        paging: true,
	        deleteConfirm: function(item) {
	            return "The Insumo \"" + item.Name + "\" will be removed. Are you sure?";
	        },
	        rowClick: function(args) {
	            showDetailsInsumosDialog("Edit", args.item);
	        },
	        controller: dbInsumos,
	        fields: [
	        	{ name: "idInsumo", type: "label", title:'Id Insumo', width: 150, validate: "required" },
	        	{ name: "descripcion", type: "label", title:'Insumo', width: 150, validate: "required" },
	            /*{ name: "cpt.autorizado", type: "select", title:'¿autorizado?', items: db.opciones, valueField: "Id", textField: "opcion",
	                validate: { message: "Country should be specified", validator: function(value) { return value > 0; } } },]*/
	            { name: "monto", type: "text",  title:'Monto Solicitado', width: 150, validate: "required" },
	            { name: "autorizado", type: "checkbox",  title:'¿Autorizado?', width: 150, validate: "required" }/*,
	            {
	                type: "control",
	                modeSwitchButton: false,
	                editButton: false,
	                headerTemplate: function() {
	                    return $("<button>").attr("type", "button").text("Add")
	                            .on("click", function () {
	                            	actualizarMontosGrid();
	                                showDetailsDialog("Add", {});
	                            });
	                }
	            }*/
	        ]
	    });

	    $("#detailsInsumosDialog").dialog({
	        autoOpen: false,
	        width: 400,
	        close: function() {
	            $("#detailsInsumosForm").validate().resetForm();
	            $("#detailsInsumosForm").find(".error").removeClass("error");
	        }
	    });
//
	    $("#detailsInsumosForm").validate({
	        rules: {	        	
	            autorizado: "required"
	        },
	        messages: {
	            name: "Please enter name",
	            age: "Please enter valid age",
	            address: "Please enter address (more than 10 chars)",
	            country: "Please select country"
	        },
	        submitHandler: function() {
	            formSubmitHandler2();
	        }
	    });

	    var formSubmitHandler2 = $.noop;

	    var showDetailsInsumosDialog = function(dialogType, insumo) {
	    	console.log(insumo)
	    	$("#idInsumo").val(insumo.idInsumo);
	        $("#descripcionInsumo").val(insumo.descripcion);
	    	$("#montoInsumo").val(insumo.monto);
	        $("#autorizadoInsumo").val(insumo.autorizado);	        	        
	        formSubmitHandler2 = function() {
	            saveInsumo(insumo, dialogType === "Add");
	        };

	        $("#detailsInsumosDialog").dialog("option", "title", dialogType + " insumo")
	                .dialog("open");
	    };

	    var saveInsumo = function(insumo, isNew) {
	        $.extend(insumo, {	        			        		      
		        autorizado:$("#autorizadoInsumo").val(),
		        monto: $("#montoInsumo").val(),
		        descripcion: $("#descripcionInsumo").val()		        
	        });

	        $("#jsGridInsumos").jsGrid(isNew ? "insertItem" : "updateItem", insumo);

	        $("#detailsInsumosDialog").dialog("close");
	    };

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

function actualizarHonorarios(id){
	var monto = parseFloat($("#honorariosBase").val());
	var porcHM = parseFloat($("#porcHM").val())/100;
	var porcA1 = parseFloat($("#porcA1").val())/100;
	var porcA2 = parseFloat($("#porcA2").val())/100;
	var porcAN = parseFloat($("#porcAN").val())/100;			
	if (id==1){
		$("#honorariosMedicosDictaminados").val(monto*porcHM);	
	}
	if (id==2){
		$("#honorariosAyudanteUnoDictaminados").val(monto*porcA1);
	}
	if (id==3){
		$("#honorariosAyudanteDosDictaminados").val(monto*porcA2);
	}
	if (id==4){
		$("#honorariosAnestesiologoDictaminados").val(monto*porcAN);
	}
	actualizarMontoFinal();
}

function actualizarMontosGrid(){
	var monto = parseFloat($("#honorariosBase").val());
	var porcHM = parseFloat($("#porcHM").val());
	var porcA1 = parseFloat($("#porcA1").val());
	var porcA2 = parseFloat($("#porcA2").val());
	var porcAN = parseFloat($("#porcAN").val());	
	$("#honorariosMedicosDictaminados").val(monto-(monto*.30));
	$("#honorariosAyudanteUnoDictaminados").val(monto-(monto*.15));
	$("#honorariosAyudanteDosDictaminados").val(monto-(monto*.15));
	$("#honorariosAnestesiologoDictaminados").val(monto-(monto*.10));
	actualizarMontoFinal();
}

function actualizarMontoFinal(){
	var m1 = parseFloat($("#honorariosMedicosDictaminados").val());
	var m2 = parseFloat($("#honorariosAyudanteUnoDictaminados").val());
	var m3 = parseFloat($("#honorariosAyudanteDosDictaminados").val());
	var m4 = parseFloat($("#honorariosAnestesiologoDictaminados").val());
	var m5 = parseFloat($("#costoPromedio").val());
	var m5 = $("#costoTotal").val(m1+m2+m3+m4+m5);
	
}

function finalizarDictamen() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: 400,
      modal: true,
      buttons: {
    	  "Regresar Solicitud": function() {
      		$( "#dialog-confirm3" ).dialog({
      	      resizable: false,
      	      height: 500,
      	      width: 700,
      	      modal: true,
      	      buttons: {
      	        "CONFIRMAR": function() {  	        
      	          $( this ).dialog( "close" );
      	        },
      	        "CANCELAR": function() {
      	          $( this ).dialog( "close" );
      	        }
      	      }
      	    }); 	
         $( this ).dialog( "close" );
    	 },
        "Rechazar Solicitud": function() {
        		$( "#dialog-confirm2" ).dialog({
        	      resizable: false,
        	      height: 500,
          	      width: 700,
        	      modal: true,
        	      buttons: {
        	        "CONFIRMAR": function() {  	        
        	          $( this ).dialog( "close" );
        	        },
        	        "CANCELAR": function() {
        	          $( this ).dialog( "close" );
        	        }
        	      }
        	    }); 	
          $( this ).dialog( "close" );
        },
        "Aceptar Solicitud": function() {
        	aceptarSolicitud();        	        	
            $( this ).dialog( "close" );
        },
        "Cancelar": function() {
            $( this ).dialog( "close" );
          }
      }
    });
 }


function aceptarSolicitud(){
	$.ajax({
		async : false,
		data : {
			"idSolicitudCirugiaProgramada" : $("#idSolicitud").val()			
		},
		dataType : 'json',
		url : 'mvc/dictaminador/cambiarstatusdictaminada',
		type : 'post',
		beforeSend : function() {
			$("#loading").show();			
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
