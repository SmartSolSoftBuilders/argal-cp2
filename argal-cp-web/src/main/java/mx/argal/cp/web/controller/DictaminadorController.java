package mx.argal.cp.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;
import javax.servlet.http.HttpServletRequest;
import mx.argal.seguridad.modelo.UsuarioSeguridad;
import mx.argal.seguridad.servicios.MttoSeguridadServicio;
import mx.argal.seguridad.util.SeguridadUtil;
import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.Cpt;
import mx.argal.cp.modelo.Dictaminador;
import mx.argal.cp.modelo.Insumo;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.ProcedimientoSolicitado;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.servicios.DictaminadorServicio;
import mx.argal.cp.servicios.UsuarioServicio;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/dictaminador")
public class DictaminadorController {
	
	public final String ROLE_ADMINISTRADOR="ROLE_ADMINISTRADOR";
	public final String ROLE_IMPLANT="ROLE_IMPLANT";
	public final String ROLE_CLIENTE="ROLE_CLIENTE";
	public final String ROLE_DICTAMINADOR="ROLE_DICTAMINADOR";
	public final String ROLE_AUTORIZADOR="ROLE_AUTORIZADOR";
	
	@Autowired
	public DictaminadorServicio dictaminadorServicio;
			
	@RequestMapping(value="/getsolicitudesdictaminador",method = RequestMethod.POST)
    @ResponseBody
    public List obtenerSolicitudesDictaminador(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>get sols dict!!!"+ solicitudCirugiaProgramada.getTipoSolicitudCirugiaProgramada());
		System.out.println("<OTIKA>getSolicitud!!!"+ request.getSession().getAttribute("idDictaminadorSession").toString());    	    	
		Dictaminador dictaminador = new Dictaminador();
		dictaminador.setIdDictaminador(Integer.parseInt(request.getSession().getAttribute("idDictaminadorSession").toString()));
		solicitudCirugiaProgramada.setDictaminador(dictaminador);
		return this.dictaminadorServicio.obtenerSolicitudesDictaminador(solicitudCirugiaProgramada);    	  
	}
		
	@RequestMapping(value="/actualizarmontodictaminado",method = RequestMethod.POST)
    @ResponseBody
    public Boolean actualizarMontoDictaminado(@ModelAttribute(value="cirugiaSolicitada") CirugiaSolicitada cirugiaSolicitada, HttpServletRequest request){
		System.out.println("<OTIKA>guardar monto cirugia!!!");
		try {
			//Valor 1 dictamiando
			this.dictaminadorServicio.actualizarMonto(cirugiaSolicitada,1);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/cambiarstatusinfoincompleta",method = RequestMethod.POST)
    @ResponseBody
    public Boolean cambiarStatusInformacionIncompleta(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Cambiar status info incompleta!!!");
		try {
			this.dictaminadorServicio.cambiarStatusByParams(solicitudCirugiaProgramada,3);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/rechazarsolicitud",method = RequestMethod.POST)
    @ResponseBody
    public Boolean rechazarSolicitud(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Cambiar status info incompleta!!!");
		try {
			this.dictaminadorServicio.cambiarStatusByParams(solicitudCirugiaProgramada,3);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/cambiarstatusdictaminada",method = RequestMethod.POST)
    @ResponseBody
    public Boolean cambiarStatusDictaminada(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Cambiar status dictaminada!!!");
		try {
			this.dictaminadorServicio.cambiarStatusByParams(solicitudCirugiaProgramada,4);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/aceptar_rechazar_procedimiento",method = RequestMethod.POST)
    @ResponseBody
    public Boolean aceptarRechazarProcedimiento(@ModelAttribute(value="procedimiento") ProcedimientoSolicitado procedimientoSolicitado, HttpServletRequest request){
		System.out.println("<OTIKA>Aceptar/Rechazar Procedimiento!!!");
		try {
			this.dictaminadorServicio.aceptarRechazarProcedimiento(procedimientoSolicitado);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/aceptar_rechazar_insumo",method = RequestMethod.POST)
    @ResponseBody
    public Boolean aceptarRechazarInsumo(@ModelAttribute(value="insumo") Insumo insumo, HttpServletRequest request){
		System.out.println("<OTIKA>Aceptar/Rechazar Insumo!!!");
		try {
			this.dictaminadorServicio.aceptarRechazarInsumo(insumo);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
}
