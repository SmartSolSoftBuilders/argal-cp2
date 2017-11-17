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
		url : 'mvc/negociador/getsolicitudbyid',
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
					tablaProc1 += "<table><tr style='color:green;'><td>Honorarios Médicos Dictaminados</td><td>Honorarios Ayudante 1 Dictaminados</td><td>Honorarios Ayudante 2 Dictaminados</td><td>Honorarios Anestesiólogo Dictaminados</td></tr>";
					tablaProc1 += "<tr><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosDictaminados)+"</td><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosDictaminados)+"</td><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosDictaminados)+"</td><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosDictaminados)+"</td></tr>";
					tablaProc1 += "</table>"
					$("#divProcedimiento1Negociar").html(tablaProc1);
				} 
				if (response.cirugiaSolicitadaUno.procedimientoDos!=null){
					tablaProc2="<font color='darkblue'>Procedimiento 2: </font>"+  response.cirugiaSolicitadaUno.procedimientoDos.cpt.descripcion;
					tablaProc2 += "<table><tr style='color:green;'><td>Honorarios Médicos Dictaminados</td><td>Honorarios Ayudante 1 Dictaminados</td><td>Honorarios Ayudante 2 Dictaminados</td><td>Honorarios Anestesiólogo Dictaminados</td></tr>";
					tablaProc2 += "<tr><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosDictaminados)+"</td><td>"+formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosDictaminados)+"</td><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosDictaminados)+"</td><td>"+ formatMoneda(response.cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosDictaminados)+"</td></tr>";
					tablaProc2 += "</table>"
					$("#divProcedimiento2Negociar").html(tablaProc2);	
				}	
				$("#divProcedimiento1Negociar").html(tablaProc1);
				if (response.cirugiaSolicitadaUno.procedimientoTres!=null)
					$("#divProcedimiento3Negociar").html("<font color='darkblue'>Procedimiento 3: </font>"+response.cirugiaSolicitadaUno.procedimientoTres.cpt.descripcion);
			}			
			$("#divIcdCirugia").html("<font color='darkblue'>Diagnóstico de Ingreso: </font>"+  response.cirugiaSolicitadaUno.diagnosticoIngreso.descripcion);
			console.log("costo prom:"+$("#costoPromedio").val())
			$("#costoPromedioShow").html(formatMoneda(parseFloat($("#costoPromedio").val())));
			console.log("costo prom2")
			if (response.cirugiaSolicitadaUno!=null){
				if (response.cirugiaSolicitadaUno.montoAutorizado!=null && response.cirugiaSolicitadaUno.montoAutorizado!="")
					$("#montoNegociado").val(formatMoneda(parseFloat(response.cirugiaSolicitadaUno.montoAutorizado)));
				else
					$("#montoNegociado").val(formatMoneda(parseFloat($("#costoPromedio").val())));
			}
			else{
				$("#montoAutorizado").val(formatMoneda(parseFloat($("#costoPromedio").val())));
			}
			console.log("costo prom3")
			$("#costoTotal").html(formatMoneda(parseFloat(calcularMontoCirugia(response))));
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
	            return "The procedimiento \"" + item.Name + "\" will be removed. Are you sure?";
	        },
	        rowClick: function(args) {
	            showDetailsDialog("Edit", args.item);
	        },
	        controller: db,
	        fields: [	        		           
	        	{ name: "cpt.descripcion", type: "text", title:'Procedimiento', width: 200, validate: "required" },
	            { name: "honorariosMedicosNegociados", type: "text",  title:'Honorarios Médicos Negociados', width: 60, validate: "required" },	            
	            { name: "honorariosAyudanteUnoNegociados", type: "text",  title:'Honorarios Ayudante 1 Negociados', width: 60, validate: "required" },	            
	            { name: "honorariosAyudanteDosNegociados", type: "text",  title:'Honorarios Ayudante 2 Negociados', width: 60, validate: "required" },	            
	            { name: "honorariosAnestesiologoNegociados", type: "text",  title:'Honorarios Anestesiólogo Negociados', width: 60, validate: "required" }
	        ]
	    });

	    $("#detailsDialog").dialog({
	        autoOpen: false,
	        modal:true,
	        position: { my: "center top", at: "center center", of: window },
	        width: 400,
	        close: function() {
	            $("#detailsForm").validate().resetForm();
	            $("#detailsForm").find(".error").removeClass("error");
	        }
	    });	    

//
	    $("#detailsForm").validate({
	        rules: {
	        	honorariosMedicosNegociados: "required",
	        	honorariosAyudanteUnoNegociados: "required",
	        	honorariosAnestesiologoNegociados: "required",
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
	        $("#idProcedimientoSolicitado").val(procedimiento.idProcedimientoSolicitado);
	        $("#honorariosMedicosNegociados").val(procedimiento.honorariosMedicosNegociados);
	        $("#honorariosAyudanteUnoNegociados").val(procedimiento.honorariosAyudanteUnoNegociados);
	        $("#honorariosAyudanteDosNegociados").val(procedimiento.honorariosAyudanteDosNegociados);
	        $("#honorariosAnestesiologoNegociados").val(procedimiento.honorariosAnestesiologoNegociados);
	        
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
		        honorariosMedicosNegociados: $("#honorariosMedicosNegociados").val(),
		        honorariosAyudanteUnoNegociados: $("#honorariosAyudanteUnoNegociados").val(),
		        honorariosAyudanteDosNegociados: $("#honorariosAyudanteDosNegociados").val(),
		        honorariosAnestesiologoNegociados: $("#honorariosAnestesiologoNegociados").val()
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
	        	$.ajax({
	        		async:false,
	        		data : {
	        			"idInsumo" :  updatingInsumo.idInsumo,
	        			"montoNegociado" : updatingInsumo.montoNegociado
	        		},
	        		dataType : 'json',
	        		type : 'post',
					url: "mvc/negociador/guardar_insumo_negociado"		  
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
        	$.ajax({
        		async:false,
        		data : {
        			"idProcedimientoSolicitado" :  updatingProcedimiento.idProcedimientoSolicitado,
        			"honorariosMedicosNegociados" : updatingProcedimiento.honorariosMedicosNegociados,
        			"honorariosAyudanteUnoNegociados" : updatingProcedimiento.honorariosAyudanteUnoNegociados,
        			"honorariosAyudanteDosNegociados" : updatingProcedimiento.honorariosAyudanteDosNegociados,
        			"honorariosAnestesiologoNegociados" : updatingProcedimiento.honorariosAnestesiologoNegociados
        		},
        		dataType : 'json',
        		type : 'post',
				url: "mvc/negociador/negociar_procedimiento"		  
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
    if (cirugiaProgramada!=null)
    	$("#idCirugiaSolicitada1").val(cirugiaProgramada.idCirugiaSolicitada);
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
	            showDetailsInsumosDialog("Negociar", args.item);
	        },
	        controller: dbInsumos,
	        fields: [
	        	{ name: "idInsumo", type: "label", title:'Id Insumo', width: 150, validate: "required" },
	        	{ name: "descripcion", type: "label", title:'Insumo', width: 150, validate: "required" },
	            /*{ name: "cpt.autorizado", type: "select", title:'¿autorizado?', items: db.opciones, valueField: "Id", textField: "opcion",
	                validate: { message: "Country should be specified", validator: function(value) { return value > 0; } } },]*/
	            { name: "monto", type: "text",  title:'Monto Solicitado', width: 150, validate: "required" },
	            { name: "montoNegociado", type: "text",  title:'Monto Negociado', width: 150, validate: "required" }	        ]
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
	    	$("#montoInsumoNegociado").val(insumo.montoNegociado);
	    	$("#montoInsumo").val(insumo.monto);
	        formSubmitHandler2 = function() {
	            saveInsumo(insumo, dialogType === "Add");
	        };

	        $("#detailsInsumosDialog").dialog("option", "title", dialogType + " insumo")
	                .dialog("open");
	    };

	    var saveInsumo = function(insumo, isNew) {
	        $.extend(insumo, {	        			        		      		        
	        	monto: $("#montoInsumo").val(),
	        	montoNegociado: $("#montoInsumoNegociado").val(),
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

function guardarmontoNegociado(){
	$.ajax({
		async : false,
		data : {
			"idCirugiaSolicitada" : $("#idCirugiaSolicitada1").val(),
			"montoNegociado" : ($("#montoNegociado").val().replace("$","")).replace(/,/g,"")
		},
		dataType : 'json',
		url : 'mvc/negociador/actualizarmontonegociado',
		type : 'post',
		beforeSend : function() {
			$("#loading").show();			
		},
		success : function(response) {
			$("#loading").hide();
			$("#contenidoSolicitud").show();
			mensaje("El monto del costo hospitalario fué actualizado con éxito!");
			cargarSolicitud($("#idSolicitud").val());
			// console.log(response)
		},
		error : function(response) {
			alert("error!")
			// console.log(response)
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
	var m1 = parseFloat($("#honorariosMedicosNegociados").val());
	var m2 = parseFloat($("#honorariosAyudanteUnoNegociados").val());
	var m3 = parseFloat($("#honorariosAyudanteDosNegociados").val());
	var m4 = parseFloat($("#honorariosAnestesiologoNegociados").val());
	var m5 = parseFloat($("#costoPromedio").val());
	var m5 = $("#costoTotal").val(m1+m2+m3+m4+m5);
	
}

function finalizarNegociacion() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: 400,
      modal: true,
      buttons: {    	         
        "Aceptar": function() {
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
		url : 'mvc/negociador/cambiarstatusnegociada',
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

function formatMoneda(num) {
	if (num==null || num=="")
		return "$0.0";
    var p = num.toFixed(2).split(".");
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
		if (cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosNegociados!=null && cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosNegociados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoUno.honorariosMedicosNegociados);
		}
		if (cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteUnoNegociados!=null && cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteUnoNegociados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteUnoNegociados);
		}
		if (cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteDosNegociados!=null && cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteDosNegociados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoUno.honorariosAyudanteDosNegociados);
		}
		if (cirugiaSolicitadaUno.procedimientoUno.honorariosAnestesiologoNegociados!=null && cirugiaSolicitadaUno.procedimientoUno.honorariosAnestesiologoNegociados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoUno.honorariosAnestesiologoNegociados);
		}
	} 
	if (cirugiaSolicitadaUno.procedimientoDos!=null){
		if (cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosNegociados!=null && cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosNegociados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoDos.honorariosMedicosNegociados);
		}
		if (cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteUnoNegociados!=null && cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteUnoNegociados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteUnoNegociados);
		}
		if (cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteDosNegociados!=null && cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteDosNegociados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoDos.honorariosAyudanteDosNegociados);
		}
		if (cirugiaSolicitadaUno.procedimientoDos.honorariosAnestesiologoNegociados!=null && cirugiaSolicitadaUno.procedimientoDos.honorariosAnestesiologoNegociados!=""){			
			montoCalculado += parseFloat(cirugiaSolicitadaUno.procedimientoDos.honorariosAnestesiologoNegociados);
		}
	}
	if ($("#montoDictaminado").val()!="" && $("#montoNegociado").val()!=null){
		montoCalculado +=parseFloat ( $("#montoNegociado").val().replace("$","").replace(/,/g,"") );		
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
	console.log(" monto negociado:" + montoCalculado);
	return montoCalculado;
}