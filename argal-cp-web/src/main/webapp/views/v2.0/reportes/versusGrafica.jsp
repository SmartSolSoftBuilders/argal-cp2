
<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>ARGAL-HSCS</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>	
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="../../static/js/v2.0/app/reportes/versusGrafica.js?version=1"></script>		
	
	<link rel="stylesheet" href="../../static/js/v2.0/js/screen.css" />
	<link rel="stylesheet" href="../../static/css/v2.0/jquery.dataTables.min.css" />
	<link rel="stylesheet" href="../../static/css/v2.0/argal_style.css" />
	<link rel="stylesheet" href="../../static/css/v2.0/form.css" />
	<link rel="stylesheet" href="../../static/css/v2.0/jquery-ui.css">
    
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      //google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('pie_today_div'));

        //chart.draw(data, options);
      }
    </script>
<body bgcolor="#46C2BC">
	<header id="pageHeader">
		<table width="90%" class="pageHeader">
			<tr>
				<td align="center">
					<font color="white">HOSPITAL SYSTEM CONTROL SPENDING</font><br>
				</td>
			</tr>
		</table>
		
		<jsp:include page="../menu/menu2.jsp" />
		 
	</header>
	<div id="pageContainer" style="width: 1250px;">
		<div id="contentContainer" class="clearfix" align="center">
			<nav id="pageNav"></nav>
					
			  <div class="form-group" >
			  		<h1>REPORTE VERSUS</h1>														  							
				</div>
	 <h7>Seleccione Datos</h7> 
 	   	 <table> 
           <tr>	
              <td><h6>Hospital:&nbsp;&nbsp;&nbsp;<select id="hospital" name="hospitalVersus" style="width:180px; data-validation="required"">   									
						<option value="">Seleccione...</option>
					</select></h6></td>
              <td><h6>Año:&nbsp;&nbsp;&nbsp;<SELECT id="anioRepo" data-validation="required">
			<OPTION value="">Seleccione...</OPTION>
			<OPTION value=2016>2016</OPTION>
			<OPTION value=2017>2017</OPTION>
			<OPTION value=2018>2018</OPTION>
			<OPTION value=2019>2019</OPTION>
			<OPTION value=2020>2020</OPTION>
			<OPTION value=2021>2021</OPTION>
			<OPTION value=2022>2022</OPTION>
			</SELECT>
			</h6></td>
              <td><h6>Mes:&nbsp;&nbsp;&nbsp;<SELECT id="mesRepo" data-validation="required">	
							<OPTION value="">Seleccione...</OPTION>
						    <OPTION value=1>ENERO</OPTION>
							<option value=2>FEBRERO</option>
							<option value=3>MARZO</option>
							<option value=4>ABRIL</option>
							<option value=5>MAYO</option>
							<option value=6>JUNIO</option>
							<option value=7>JULIO</option>
							<option value=8>AGOSTO</option>
							<option value=9>SEPTIEMBRE</option>
							<option value=10>OCTUBRE</option>
							<option value=11> NOVIEMBRE</option>
							<option value=12>DICIEMBRE</option>
					</SELECT></h6></td>
					 
          </tr>
          </table>
    
<td><button class="myButton" onclick="drawChart2()" >GENERAR</button></td>
</tr>
  <table>
  <tr>
  <td><div  id="idVersusUsoTrue"></div></td>
		  <td><div  id="idVersusUsoFalse"></div></td>
      </tr>
      
      </table>
 <div id="pie_today_div" style="width: 900px; height: 500px;"></div>
</body>
</html>	