<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Data Manipulation Scenario - jsGrid Demo</title>
<link href="static/css_acc/reset.min.css" rel="stylesheet" type="text/css" />
<link href="static/css_acc/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="static/css_acc/style_acc.css">
<link href="static/js/lib/form/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
<script src="static/js/lib/form/jquery.validate.js"></script>
<script src="static/js/lib/form/bootstrap.min.js"></script>
<script src="static/js/lib/form/additional-methods.js"></script>
<script src="static/js/app/autorizador/solicitud.js"></script>
<link rel="stylesheet" href="static/css/v2.0/jquery.dataTables.min.css" />


<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,600,400' rel='stylesheet' type='text/css'>
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.min.css" />
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid-theme.min.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/cupertino/jquery-ui.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/cupertino/jquery-ui.css">
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<link rel="stylesheet" href="static/css/responsive/styles.css">
<link rel="stylesheet" href="static/css/responsive/responsive.css">
<style type="text/css">
body {
  margin: 0;
  padding: 0;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}

table {
  border-spacing: 0;
}

table td {
  border-collapse: collapse;
}

.ExternalClass {
  width: 100%;
}

.ExternalClass,
.ExternalClass p,
.ExternalClass span,
.ExternalClass font,
.ExternalClass td,
.ExternalClass div {
  line-height: 100%;
}

.ReadMsgBody {
  width: 100%;
  background-color: #ebebeb;
}

table {
  mso-table-lspace: 0pt;
  mso-table-rspace: 0pt;
}

img {
  -ms-interpolation-mode: bicubic;
}

.yshortcuts a {
  border-bottom: none !important;
}

@media screen and (max-width: 599px) {
  .force-row,
  .container {
    width: 100% !important;
    max-width: 100% !important;
  }
}
@media screen and (max-width: 400px) {
  .container-padding {
    padding-left: 12px !important;
    padding-right: 12px !important;
  }
}
.ios-footer a {
  color: #aaaaaa !important;
  text-decoration: underline;
}
a[href^="x-apple-data-detectors:"],
a[x-apple-data-detectors] {
  color: inherit !important;
  text-decoration: none !important;
  font-size: inherit !important;
  font-family: inherit !important;
  font-weight: inherit !important;
  line-height: inherit !important;
}
</style>
</head>

<body style="margin:0; padding:0;" bgcolor="#F0F0F0" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<!-- 100% background wrapper (grey background) -->
<table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0" bgcolor="#F0F0F0">
  <tr>
    <td align="center" valign="top" bgcolor="#F0F0F0" style="background-color: #F0F0F0;">

      <br>

      <!-- 600px container (white background) -->
      <table border="0" width="800" cellpadding="0" cellspacing="0" class="container" style="width:800px;max-width:800px">
        <tr>
          <td class="container-padding header" align="left" style="font-family:Helvetica, Arial, sans-serif;font-size:24px;font-weight:bold;padding-bottom:12px;color:#DF4726;padding-left:24px;padding-right:24px">
            Autorizar Solicitud de Cirugía Programada
          </td>
        </tr>
        <tr>
          <td class="container-padding content" align="left" style="padding-left:24px;padding-right:24px;padding-top:12px;padding-bottom:12px;background-color:#ffffff">
            <br>
				<div class="title" style="font-family:Helvetica, Arial, sans-serif;font-size:18px;font-weight:600;color:#374550">																		
				</div>
<br>

<div class="body-text" style="font-family:Helvetica, Arial, sans-serif;font-size:14px;line-height:20px;text-align:left;color:#333333">
<div class="title"><h4><img src="static/img/benef.png" width="25px" />Datos del Beneficiario</h4></div>
<jsp:include page="secciones/sec_beneficiario.jsp"></jsp:include>	
				
<br>
</div>

<div class="hr" style="height:1px;border-bottom:1px solid #cccccc">&nbsp;</div>
<br>
<div class="title"><h4><img src="static/img/documents.png" width="25px" />Documentacíon</h4></div>
<jsp:include page="secciones/sec_documentacion.jsp"></jsp:include>	

<div class="hr" style="height:1px;border-bottom:1px solid #cccccc;clear: both;">&nbsp;</div>
<br>
<div class="title"><h4><img src="static/img/surgery.png" width="25px" />Datos de la cirugía</h4></div>
<jsp:include page="secciones/sec_cirugia_grid.jsp"></jsp:include>

<div class="title"><h4><img src="static/img/schedule.png" width="25px" />Programación de la cirugía</h4></div>
<jsp:include page="secciones/sec_programacion.jsp"></jsp:include>

<div class="title"><h4><img src="static/img/person.png" width="25px" />Riesgos y Personal Adicional Requerido</h4></div>
<jsp:include page="secciones/sec_riesgos_personal.jsp"></jsp:include>	

<div class="title"><h4><img src="static/img/supplies.jpg" width="25px" height="35px" />Presupuesto de Insumos</h4></div>
<jsp:include page="secciones/sec_insumos.jsp"></jsp:include>

<div class="subtitle" style="font-family:Helvetica, Arial, sans-serif;font-size:16px;font-weight:600;color:#2469A0">
	Si ha validado todo, de clic en Finalizar Dictamen:<br><button type="button" onclick="finalizarAutorizacion();" class="btn btn-primary">Finalizar Dictamen</button>
</div>

<div class="body-text" style="font-family:Helvetica, Arial, sans-serif;font-size:14px;line-height:20px;text-align:left;color:#333333">
    <br>
  	<em><small>Autorizar Solicitud</small></em>
</div>

<br>
          </td>
        </tr>
        <tr>
          <td class="container-padding footer-text" align="left" style="font-family:Helvetica, Arial, sans-serif;font-size:12px;line-height:16px;color:#aaaaaa;padding-left:24px;padding-right:24px">
            <br><br>
            	ARGAL
            <br><br>

            <br><br>
          </td>
        </tr>
      </table>
<!--/600px container -->


    </td>
  </tr>
</table>
<!--/100% background wrapper-->

<div id="dialog-mensaje" title="Aviso" style="display:none;">
  <p>
    <span class="ui-icon ui-icon-circle-check" style="float:left; margin:0 7px 50px 0;"></span>
    <div id="mensajeDialogo"></div>
  </p>
</div>

<div id="dialog-confirm" title="Finalizar Solicitud" style="display:none;">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>¿Ha terminado de supervisar la solicitud? De ser así, proceda a emitir una autorización ó rechazo dándo click en el botón según lo desee:</p>
</div>

<div id="dialog-confirm2" title="¿Confirmar?" style="display:none;">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>¿SEGURO QUE DESEA RECHAZAR LA SOLICITUD?</p>
  <p>La solicitud será regresada al Médico Tratante con el status RECHAZADA</p>
  Motivo por el cual rechaza la solicitud:
  <br><textarea style=" width: 596px; " rows="8" cols="100"></textarea>
</div>

<div id="dialog-confirm3" title="¿Regresar Solicitud al Médico Tratante?" style="display:none;">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>¿SEGURO QUE DESEA REGRESAR LA SOLICITUD?</p>
  <p>La solicitud será regresada al Médico Tratante con el status "INFORMACIÓN INCOMPLETA"</p>
	Motivo por el cual regresa la solicitud:  
	<br><textarea style=" width: 596px; " rows="8" cols="100"></textarea>
</div>

</body>