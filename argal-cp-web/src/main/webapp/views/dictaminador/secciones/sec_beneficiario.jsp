<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="body-text"
	style="font-family: Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; text-align: left; color: #333333">
	<div id="idSolDiv">
		<c:if test="${idSolicitud!=null}">
			<font color='blue'>Folio de la solicitud:</font><input type="hidden" id="idSolicitud" name="idSolicitud" value="<c:out value="${idSolicitud}"/>" />				
			<c:out value="${idSolicitud}" />
		</c:if>
		<c:if test="${idSolicitud==null}">
			<input type="hidden" id="idSolicitud" name="idSolicitud" />
		</c:if>
	</div>
	<div id="divMedicoTratante"></div>
	<div id="divDatosTitular"></div>
	<div id="divDatosBeneficiario"></div>	
</div>
