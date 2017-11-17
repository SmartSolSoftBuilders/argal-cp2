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
@RequestMapping("/solicitud")
public class SolicitudController {
	
	public final String ROLE_ADMINISTRADOR="ROLE_ADMINISTRADOR";
	public final String ROLE_IMPLANT="ROLE_IMPLANT";
	public final String ROLE_CLIENTE="ROLE_CLIENTE";
	
	@Autowired
	public SolicitudServicio solicitudServicio;
			
	@RequestMapping(value="/guardar_solicitud",method = RequestMethod.POST)
    @ResponseBody
    public SolicitudCirugiaProgramada guardarSolicitud(@ModelAttribute(value="solicitudCirugiaProgramada") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Guardando!!!"+solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());
    	System.out.println("<OTIKA>Guardando!!!"+solicitudCirugiaProgramada.getNombreBeneficiarioSolicitudCirugiaProgramada());
    	Integer idSolicitudGuardada = 0;
    	if (solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada()==null || solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada()==0){
    		MedicoTratante medicoTratante = new MedicoTratante();
    		medicoTratante.setIdMedicoTratante(Integer.parseInt(request.getSession().getAttribute("idMedicoTratanteSession").toString()));
    		solicitudCirugiaProgramada.setMedicoTratante(medicoTratante);
    		idSolicitudGuardada = this.solicitudServicio.guardarSolicitud(solicitudCirugiaProgramada);    		    	
    	}
    	else{
    		this.solicitudServicio.actualizarSolicitud(solicitudCirugiaProgramada);
    	}
    	System.out.println("Guardada la solicitud:"+idSolicitudGuardada);
    	return solicitudCirugiaProgramada;    	  
	}
	
	@RequestMapping(value="/guardar_solicitud_p2",method = RequestMethod.POST)
    @ResponseBody
    public SolicitudCirugiaProgramada guardarSolicitudP2(@ModelAttribute(value="solicitudCirugiaProgramada") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Guardando ICD cirugia 1!!!"+solicitudCirugiaProgramada.getCirugiaSolicitadaUno().getIdCirugiaSolicitada());
		System.out.println("<OTIKA>Guardando ICD cirugia 1!!!"+solicitudCirugiaProgramada.getCirugiaSolicitadaUno().getDiagnosticoIngreso().getId());
		System.out.println("<OTIKA>Guardando ICD cirugia 1!!!"+solicitudCirugiaProgramada.getCirugiaSolicitadaUno().getProcedimientoUno().getId());
		System.out.println("<OTIKA>Guardando ICD cirugia 1!!!"+solicitudCirugiaProgramada.getCirugiaSolicitadaUno().getProcedimientoDos().getId());
		if (solicitudCirugiaProgramada.getCirugiaSolicitadaUno()!=null){
			if (solicitudCirugiaProgramada.getCirugiaSolicitadaUno().getDiagnosticoIngreso().getId()!=null){
				if (solicitudCirugiaProgramada.getCirugiaSolicitadaUno().getIdCirugiaSolicitada()==null){
					System.out.println("Solicitud nueva VAL!"+solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());
					solicitudCirugiaProgramada.getCirugiaSolicitadaUno().setIdCirugiaSolicitada(solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());
					this.solicitudServicio.guardarSolicitudCirugias(solicitudCirugiaProgramada.getCirugiaSolicitadaUno());
				}
				else {
					System.out.println("Solicitud existe VAL!"+solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());
					if (solicitudCirugiaProgramada.getCirugiaSolicitadaUno().getIdCirugiaSolicitada()!=null){
						this.solicitudServicio.actulizarSolicitudCirugias(solicitudCirugiaProgramada.getCirugiaSolicitadaUno());
					}
					if (solicitudCirugiaProgramada.getCirugiaSolicitadaDos().getIdCirugiaSolicitada()!=null){
						this.solicitudServicio.actulizarSolicitudCirugias(solicitudCirugiaProgramada.getCirugiaSolicitadaDos());
					}					
				}
			}
		}    	
    	return solicitudCirugiaProgramada;    	  
	}
	
	@RequestMapping(value="/guardar_solicitud_p3",method = RequestMethod.POST)
    @ResponseBody
    public SolicitudCirugiaProgramada guardarSolicitudP3(@ModelAttribute(value="solicitudCirugiaProgramada") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Guardando!!!"+solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());
    	Boolean idSolicitudGuardada = false;
    	if (solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada()!=null || solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada()!=0){    		
    		idSolicitudGuardada = this.solicitudServicio.actualizarSolicitudProgramacionC(solicitudCirugiaProgramada);    		    	
    	}    	
    	System.out.println("Actualizada la programaci�n de la solicitud:"+idSolicitudGuardada);
    	return solicitudCirugiaProgramada;    	  
	}
	
	@RequestMapping(value="/guardar_solicitud_p5",method = RequestMethod.POST)
    @ResponseBody
    public SolicitudCirugiaProgramada guardarSolicitudP5(@ModelAttribute(value="solicitudCirugiaProgramada") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Guardando!!!"+solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());
    	Boolean idSolicitudGuardada = false;
    	if (solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada()!=null || solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada()!=0){    		
    		idSolicitudGuardada = this.solicitudServicio.actualizarSolicitudRiesgosYPersonalRequeridoByParams(solicitudCirugiaProgramada);    		    	
    	}    	
    	System.out.println("Actualizada la seccion riesg y personal de la solicitud:"+idSolicitudGuardada);
    	return solicitudCirugiaProgramada;    	  
	}
	
	@RequestMapping(value="/guardar_solicitud_p6",method = RequestMethod.POST)
    @ResponseBody
    public Boolean guardarSolicitudP6(@ModelAttribute(value="insumo") Insumo insumo , HttpServletRequest request){
		System.out.println("<OTIKA>Guardando Insumo!!!"+insumo.getId());
		System.out.println("<OTIKA>Guardando Insumo 2!!!"+insumo.getIdInsumo());
    	Integer idInsumo = 0;
    	if (insumo.getIdInsumo()!=null && insumo.getIdInsumo()!=0){    		
    		idInsumo = this.solicitudServicio.actualizarInsumo(insumo);    		    	
    	}    	
    	else {
    		System.out.println("insumo nuevo");
    		idInsumo = this.solicitudServicio.guardarInsumo(insumo);
    	}
    	System.out.println("Actualizada la seccion insumos de la solicitud:"+idInsumo);
    	return true;    	  
	}
	
	@RequestMapping(value="/getsolicitudbyid",method = RequestMethod.POST)
    @ResponseBody
    public SolicitudCirugiaProgramada getSolicitudById(@ModelAttribute(value="solicitudCirugiaProgramada") SolicitudCirugiaProgramada solicitudCirugiaProgramada){
		System.out.println("<OTIKA>getSolicitud!!!"+solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada());    	    	
    	return this.solicitudServicio.getSolicitudById(solicitudCirugiaProgramada);    	  
	}
	
	@RequestMapping(value="/getsolicitudesbymedtrat",method = RequestMethod.POST)
    @ResponseBody
    public List obtenerSolicitudesByMedTrat(@ModelAttribute(value="medicoTratante") MedicoTratante medicoTratante, HttpServletRequest request){
		System.out.println("<OTIKA>getSolicitud!!!"+ request.getSession().getAttribute("idMedicoTratanteSession").toString());    	    	
		medicoTratante.setIdMedicoTratante(Integer.parseInt(request.getSession().getAttribute("idMedicoTratanteSession").toString()));
    	return this.solicitudServicio.obtenerSolicitudesByMedTrat(medicoTratante);    	  
	}
	
	@RequestMapping(value="/getsolicitudesall",method = RequestMethod.POST)
    @ResponseBody
    public List obtenerSolicitudesAll(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>get tipo cirugia!!!"+ solicitudCirugiaProgramada.getTipoSolicitudCirugiaProgramada());    	    	
		return this.solicitudServicio.obtenerSolicitudesAll(solicitudCirugiaProgramada);    	  
	}
			
	@RequestMapping(value="/getcirugiabyid",method = RequestMethod.GET)
    @ResponseBody
    public CirugiaSolicitada getCirugiabById(HttpServletRequest request){
		System.out.println("<OTIKA>get cirugia!!!");
		CirugiaSolicitada cirugiaSolicitada = new CirugiaSolicitada();
		cirugiaSolicitada=this.solicitudServicio.obtenerCirugiaSolicitadaById(1);
		return cirugiaSolicitada;    	  
	}
	
	@RequestMapping(value="/cambiarstatusenviada",method = RequestMethod.POST)
    @ResponseBody
    public Boolean cambiarStatusEnviada(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Cambiar status enviada!!!");
		try {
			this.solicitudServicio.cambiarStatusByParams(solicitudCirugiaProgramada,2);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}					
	
}
