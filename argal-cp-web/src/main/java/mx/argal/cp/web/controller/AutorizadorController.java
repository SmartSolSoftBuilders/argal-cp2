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
import mx.argal.cp.modelo.Insumo;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.ProcedimientoSolicitado;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.servicios.SolicitudServicio;
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

/**
 * Controller encargado de devolver la vista principal o index de la aplicación.
 * 
 * El path colocado en la anotación @RequestMappig corresponde a la cofiguración dentro
 * del archivo web.xml
 * 
 * <pre>
 * {@code
 *   <welcome-file-list>
 *       <welcome-file>mvc/index</welcome-file>
 *   </welcome-file-list>   
 * }
 * </pre>
 * 
 * @author SmartSolutions
 *
 */
@Controller
@RequestMapping("/autorizador")
public class AutorizadorController {
	
	public final String ROLE_ADMINISTRADOR="ROLE_ADMINISTRADOR";
	public final String ROLE_IMPLANT="ROLE_IMPLANT";
	public final String ROLE_CLIENTE="ROLE_CLIENTE";
	public final String ROLE_AUTORIZADOR="ROLE_AUTORIZADOR";
	
	@Autowired
	public SolicitudServicio solicitudServicio;
			
	@RequestMapping(value="/getsolicitudesautorizador",method = RequestMethod.POST)
    @ResponseBody
    public List obtenerSolicitudesAutorizador(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>getsols Autorizador!!!"+ solicitudCirugiaProgramada.getTipoSolicitudCirugiaProgramada());    	    	
		return this.solicitudServicio.obtenerSolicitudesAutorizador(solicitudCirugiaProgramada);    	  
	}

	@RequestMapping(value="/cambiarstatusautorizada",method = RequestMethod.POST)
    @ResponseBody
    public Boolean cambiarStatusAutorizada(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Cambiar status negociada!!!");
		try {
			this.solicitudServicio.cambiarStatusByParams(solicitudCirugiaProgramada,6);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/aceptar_rechazar_procedimiento",method = RequestMethod.POST)
    @ResponseBody
    public Boolean autorizarProcedimiento(@ModelAttribute(value="procedimiento") ProcedimientoSolicitado procedimientoSolicitado, HttpServletRequest request){
		System.out.println("<OTIKA>autorizar Procedimiento!!!");
		try {
			this.solicitudServicio.autorizarRechazarProcedimiento(procedimientoSolicitado);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/aceptar_rechazar_insumo",method = RequestMethod.POST)
    @ResponseBody
    public Boolean aceptarRechazarProcedimiento(@ModelAttribute(value="insumo") Insumo insumo, HttpServletRequest request){
		System.out.println("<OTIKA>autorizando insumo!!!");
		try {
			Integer resp=this.solicitudServicio.guardarInsumoAutorizado(insumo);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/getsolicitudbyid",method = RequestMethod.POST)
    @ResponseBody
    public SolicitudCirugiaProgramada getSolicitudById(@ModelAttribute(value="solicitudCirugiaProgramada") SolicitudCirugiaProgramada solicitudCirugiaProgramada){
		System.out.println("<OTIKA>getSolicitud!!!"+solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());    	    	
    	return this.solicitudServicio.getSolicitudById(solicitudCirugiaProgramada);    	  
	}
		
}
