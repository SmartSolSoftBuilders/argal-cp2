package mx.argal.cp.web.controller;

import java.util.ArrayList;


import java.util.List;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import mx.argal.seguridad.modelo.UsuarioSeguridad;
import mx.argal.seguridad.servicios.MttoSeguridadServicio;
import mx.argal.seguridad.util.SeguridadUtil;
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
@RequestMapping("/solicitud")
public class SolicitudController {
	
	public final String ROLE_ADMINISTRADOR="ROLE_ADMINISTRADOR";
	public final String ROLE_IMPLANT="ROLE_IMPLANT";
	public final String ROLE_CLIENTE="ROLE_CLIENTE";
	
	@Autowired
	public SolicitudServicio solicitudServicio;
			
	@RequestMapping(value="/guardar_solicitud",method = RequestMethod.POST)
    @ResponseBody
    public boolean guardarSolicitud(@ModelAttribute(value="solicitudCirugiaProgramada") SolicitudCirugiaProgramada solicitudCirugiaProgramada){
		System.out.println("<OTIKA>Guardando!!!"+solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());
    	System.out.println("<OTIKA>Guardando!!!"+solicitudCirugiaProgramada.getNombreBeneficiarioSolicitudCirugiaProgramada());
    	if (solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada()==null || solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada()==0){
    		this.solicitudServicio.guardarSolicitud(solicitudCirugiaProgramada);	
    	}
    	else
    		this.solicitudServicio.actualizarSolicitud(solicitudCirugiaProgramada);    	
    	return true;    	  
	}


}
