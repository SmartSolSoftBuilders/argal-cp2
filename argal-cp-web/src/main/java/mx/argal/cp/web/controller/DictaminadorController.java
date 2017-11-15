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
@RequestMapping("/dictaminador")
public class DictaminadorController {
	
	public final String ROLE_ADMINISTRADOR="ROLE_ADMINISTRADOR";
	public final String ROLE_IMPLANT="ROLE_IMPLANT";
	public final String ROLE_CLIENTE="ROLE_CLIENTE";
	public final String ROLE_DICTAMINADOR="ROLE_DICTAMINADOR";
	public final String ROLE_AUTORIZADOR="ROLE_AUTORIZADOR";
	
	@Autowired
	public SolicitudServicio solicitudServicio;
			
	@RequestMapping(value="/getsolicitudesdictaminador",method = RequestMethod.POST)
    @ResponseBody
    public List obtenerSolicitudesDictaminador(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>get sols dict!!!"+ solicitudCirugiaProgramada.getTipoSolicitudCirugiaProgramada());    	    	
		return this.solicitudServicio.obtenerSolicitudesDictaminador(solicitudCirugiaProgramada);    	  
	}
	
	@RequestMapping(value="/cambiarstatusdictaminada",method = RequestMethod.POST)
    @ResponseBody
    public Boolean cambiarStatusDictaminada(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Cambiar status dictaminada!!!");
		try {
			this.solicitudServicio.cambiarStatusByParams(solicitudCirugiaProgramada,4);
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
			this.solicitudServicio.aceptarRechazarProcedimiento(procedimientoSolicitado);
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
			this.solicitudServicio.aceptarRechazarInsumo(insumo);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
}