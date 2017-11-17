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
		url : 'mvc/autorizador/getsolicitudbyid',
		type : 'post',
		beforeSend : function() {
			// $("#resultado").html("Procesando, espere por favor..."),
			// alert("OK!")
		},
		success : function(response) {
			console.log(response)
			var tipoSolicitud=["","CORTA ESTANCIA","PROGRAMADA"];
			$("#divDatosTitular").html("<font color='darkblue'>NOMBRE DEL TITULAR: </font>" + response.nombreTitularSolicitudCirugiaProgramada + " " + response.apPTitularSolicitudCirugiaProgramada + " " + response.apMTitularSolicitudCirugiaProgramada + "<font color='blue'> Empresa: </font>" + response.empresa.nombreEmpresa + "<font color='blue'> Num Nómina/Cve: </font>" + response.numNominaBeneficiarioSolicitudCirugiaProgramada + " ");
			$("#divDatosBeneficiario").html("<font color='blue'>NOMBRE DEL PACIENTE: </font>" + response.nombreBeneficiarioSolicitudCirugiaProgramada + " " + response.apPBeneficiarioSolicitudCirugiaProgramada + " " + response.apMBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> EDAD: </font>" + response.edadBeneficiarioSolicitudCirugiaProgramada + "<font color='blue'> SEXO: </font>" + response.sexoBeneficiarioSolicitudCirugiaProgramada + " ");		
			$("#divDatosSolicitudBeneficiario").html("<font color='blue'> TIPO SOLICITUD: </font>" +tipoSolicitud[response.tipoSolicitudCirugiaProgramada]+"<font color='blue'> FECHA DE ELABORACIÓN: </font>2017-10-14");
			//$("#idSolicitud").val();
			var tablaProc1="";
			var tablaProc2="";
			var tablaProc3="";
			if (response.cirugiaSolicitadaUno!=null){
				$("#divIcdCirugia").html("<font color='darkblue'>Diagnóstico de Ingreso: </font>"+  response.cirugiaSolicitadaUno.diagnosticoIngreso.descripcion);
				if (response.cirugiaSolicitadaUno.procedimientoUno!=null){
					tablaProc1="<font color='darkblue'>Procedimiento 1: </font>"+  response.cirugiaSolicitadaUno.procedimientoUno.cpt.descripcion;
					tablaProc1 += "<table style='border: 2px solid black;'><tr style='color:darkblue;'><th>Fase</th><th style=' border: 1px solid black;'>Honorarios Médicos</th><th style=' border: 1px solid black;'>Honorarios Ayudante 1 </th><th style=' border: 1px solid black;'>Honorarios Ayudante 2</th><th>Honorarios Anestesiólogo</th></tr>";
					tablaProc1 += "<tr style=' border: 1px solid black;'><td style=' border: 1px solid black;'>DICTAMEN</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosDictaminados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteUnoDictaminados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteDosDictaminados)+"</td><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosAnestesiologoDictaminados)+"</td></tr>";
					tablaProc1 += "<tr style=' border: 1px solid black;'><td style=' border: 1px solid black;'>NEGOCIACIÓN</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosNegociados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteUnoNegociados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteDosNegociados)+"</td><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosAnestesiologoNegociados)+"</td></tr>";
					tablaProc1 += "</table>"
					$("#divProcedimiento1Dictaminar").html(tablaProc1);
				} 
				if (response.cirugiaSolicitadaUno.procedimientoDos!=null){
					tablaProc2="<font color='darkblue'>Procedimiento 2: </font>"+  response.cirugiaSolicitadaUno.procedimientoDos.cpt.descripcion;
					tablaProc2 += "<table style='border: 2px solid black;'><tr style='color:darkblue;'><th>Fase</th><th style=' border: 1px solid black;'>Honorarios Médicos</th><th style=' border: 1px solid black;'>Honorarios Ayudante 1 </th><th style=' border: 1px solid black;'>Honorarios Ayudante 2</th><th style=' border: 1px solid black;'>Honorarios Anestesiólogo</th></tr>";
					tablaProc2 += "<tr style=' border: 1px solid black;'><td style=' border: 1px solid black;'>DICTAMEN</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosDictaminados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteUnoDictaminados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteDosDictaminados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosAnestesiologoDictaminados)+"</td></tr>";
					tablaProc2 += "<tr style=' border: 1px solid black;'><td style=' border: 1px solid black;'>NEGOCIACIÓN</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosNegociados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteUnoNegociados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteDosNegociados)+"</td><td style=' border: 1px solid black;'>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosAnestesiologoNegociados)+"</td></tr>";
					tablaProc2 += "</table>"
					$("#divProcedimiento2Dictaminar").html(tablaProc2);										
				}	
				$("#divProcedimiento1Dictaminar").html(tablaProc1);
				if (response.cirugiaSolicitadaUno.procedimientoTres!=null)
					$("#divProcedimiento3Dictaminar").html("<font color='darkblue'>Procedimiento 3: </font>"+response.cirugiaSolicitadaUno.procedimientoTres.cpt.descripcion);
			}			
			tablaProc1="";
			tablaProc2="";
			tablaProc3="";
			
			$("#costoPromedioShow").html(formatMoneda(""+$("#costoPromedio").val()));
			if (response.cirugiaSolicitadaUno!=null){
				if (response.cirugiaSolicitadaUno.montoDictaminado!=null)
					$("#montoAutorizado").val(formatMoneda(response.cirugiaSolicitadaUno.montoDictaminado));
				else
					$("#montoAutorizado").val(formatMoneda(""+$("#montoAutorizado").val()));
			}
			else
				$("#montoAutorizado").val(formatMoneda(""+$("#montoAutorizado").val()));
			$("#costoTotal").html(formatMoneda(calcularMontoCirugia(response)));
			
			getCirugiaSolicitadaGridProcedimientos(response.cirugiaSolicitadaUno);
			getCirugiaSolicitadaGridInsumos(response.insumos);
		},
		error : function(response) {
			$("#loading").hide();
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
	            return "The procedimiento \"" + item.Name + "\" will be removed. Are you sure?";
	        },
	        rowClick: function(args) {
	            showDetailsDialog("Edit", args.item);
	        },
	        controller: db,
	        fields: [
	        	/*{ name: "idProcedimientoSolicitado", type: "label", title:'Id Procedimiento', width: 150, validate: "required" },*/
	        	{ name: "cpt.descripcion", type: "text", title:'Procedimiento', width: 200, validate: "required" },
	        	{ name: "autorizado", type: "checkbox", title:'¿Autorizado?', width: 60, validate: "required" },
	            /*{ name: "cpt.autorizado", type: "select", title:'¿autorizado?', items: db.opciones, valueField: "Id", textField: "opcion",
	                validate: { message: "Country should be specified", validator: function(value) { return value > 0; } } },]*/
	            { name: "honorariosMedicosAutorizados", type: "text",  title:'Honorarios Médicos', width: 60, validate: "required" },
	            { name: "honorariosAyudanteUnoAutorizados", type: "text",  title:'Honorarios Ayudante 1', width: 60, validate: "required" },
	            { name: "honorariosAyudanteDosAutorizados", type: "text",  title:'Honorarios Ayudante 2', width: 60, validate: "required" },
	            { name: "honorariosAnestesiologoAutorizados", type: "text",  title:'Honorarios Anestesiólogo', width: 60, validate: "required" }/*,
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
	        modal:true,
	        position: { my: "center top", at: "center center", of: window },
	        close: function() {
	            $("#detailsForm").validate().resetForm();
	            $("#detailsForm").find(".error").removeClass("error");
	        }
	    });
//
	    $("#detailsForm").validate({
	        rules: {
	        	honorariosMedicosAutorizados: "required",
	        	honorariosAyudanteUnoAutorizados: "required",	        	
	        	honorariosAnestesiologoAutorizados: "required",
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
	        $("#honorariosMedicosAutorizados").val(procedimiento.honorariosMedicosAutorizados);
	        $("#honorariosAyudanteUnoAutorizados").val(procedimiento.honorariosAyudanteUnoAutorizados);
	        $("#honorariosAyudanteDosAutorizados").val(procedimiento.honorariosAyudanteDosAutorizados);
	        $("#honorariosAnestesiologoAutorizados").val(procedimiento.honorariosAnestesiologoAutorizados);
	        
	        formSubmitHandler = function() {
	            saveprocedimiento(procedimiento, dialogType === "Add");
	        };

	        $("#detailsDialog").dialog("option", "title", dialogType + " procedimiento")
	                .dialog("open");
	    };

	    var saveprocedimiento = function(procedimiento, isNew) {
	        $.extend(procedimiento, {	        			        		      
		        autorizado:$("#autorizado").val(),
		        idProcedimientoSolicitado : $("#idProcedimientoSolicitado").val(),
		        honorariosMedicosAutorizados: $("#honorariosMedicosAutorizados").val(),
		        honorariosAyudanteUnoAutorizados: $("#honorariosAyudanteUnoAutorizados").val(),
		        honorariosAyudanteDosAutorizados: $("#honorariosAyudanteDosAutorizados").val(),
		        honorariosAnestesiologoAutorizados: $("#honorariosAnestesiologoAutorizados").val()
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
	        			"montoAutorizado" : updatingInsumo.montoAutorizado,
	        			"autorizado" : autorizado
	        		},
	        		dataType : 'json',
	        		type : 'post',
					url: "mvc/autorizador/aceptar_rechazar_insumo"		  
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
        			"honorariosMedicosAutorizados" : updatingProcedimiento.honorariosMedicosAutorizados,
        			"honorariosAyudanteUnoAutorizados" : updatingProcedimiento.honorariosAyudanteUnoAutorizados,
        			"honorariosAyudanteDosAutorizados" : updatingProcedimiento.honorariosAyudanteDosAutorizados,
        			"honorariosAnestesiologoAutorizados" : updatingProcedimiento.honorariosAnestesiologoAutorizados,
        			"autorizado" : autorizado
        		},
        		dataType : 'json',
        		type : 'post',
				url: "mvc/autorizador/aceptar_rechazar_procedimiento"		  
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
	            { name: "montoNegociado", type: "text",  title:'Monto Negociado', width: 150, validate: "required" },
	            { name: "montoAutorizado", type: "text",  title:'Monto Autorizado', width: 150, validate: "required" },
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
	        modal:true,
	        position: { my: "center top", at: "center center", of: window },
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
	    		$("#montoAutorizado").val(insumo.montoAutorizado);		       
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
		        montoAutorizado: $("#montoAutorizado").val(),		       
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
	
	actualizarMontoFinal();
}

function actualizarMontosGrid(){
	var monto = parseFloat($("#honorariosBase").val());
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

function finalizarAutorizacion() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: 400,
      modal: true,
      buttons: {    	  
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
		url : 'mvc/autorizador/cambiarstatusautorizada',
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
			$("#loading").hide();
			loadingMain
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

function formatMoneda(num) {
	console.log(num)
	if (num==null || num=="")
		return "$0.0";
    var p = parseFloat(num).toFixed(2).split(".");
    return "$" + p[0].split("").reverse().reduce(function(acc, num, i, orig) {
        return  num=="-" ? acc : num + (i && !(i % 3) ? "," : "") + acc;
    }, "") + "." + p[1];
}

function calcularMontoCirugia(solicitud){
	var cirugiaSolicitadaUno = solicitud.cirugiaSolicitadaUno;
	var montoCalculado=0;
	if (cirugiaSolicitadaUno==null)
		return montoCalculado;
	if (cirugiaSolicitadaUno.procedimientoUno!=null){
		if (cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosAutorizados!=null && cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosAutorizados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosAutorizados);
		}
		if (cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteUnoAutorizados!=null && cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteUnoAutorizados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteUnoAutorizados);
		}
		if (cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteDosAutorizados!=null && cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteDosAutorizados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteDosAutorizados);
		}
		if (cirugiaSolicitadaUno.procedimientoUno.honorariosAnestesiologoAutorizados!=null && cirugiaSolicitadaUno.procedimientoUno.honorariosAnestesiologoAutorizados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoUno.honorariosAnestesiologoAutorizados);
		}
	} 
	if (cirugiaSolicitadaUno.procedimientoDos!=null){
		if (cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosAutorizados!=null && cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosAutorizados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosAutorizados);
		}
		if (cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteUnoAutorizados!=null && cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteUnoAutorizados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteUnoAutorizados);
		}
		if (cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteDosAutorizados!=null && cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteDosAutorizados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteDosAutorizados);
		}
		if (cirugiaSolicitadaUno.procedimientoDos.honorariosAnestesiologoAutorizados!=null && cirugiaSolicitadaUno.procedimientoDos.honorariosAnestesiologoAutorizados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoDos.honorariosAnestesiologoAutorizados);
		}
	}
	if ($("#montoAutorizado").val()!="" && $("#montoAutorizado").val()!=null){
		montoCalculado +=parseFloat ( $("#montoAutorizado").val().replace("$","").replace(/,/g,"") );		
	}
	//Insumos
	var insumos = solicitud.insumos;
	if (insumos!=null){
		for (i=0;i<insumos.length;i++){
			if (insumos[i].monto!=null && insumos[i].monto!="" && insumos[i].autorizado=="1"){
				montoCalculado +=parseFloat (insumos[i].monto);
			}
		}
	}
	console.log(montoCalculado)
	return montoCalculado;
}