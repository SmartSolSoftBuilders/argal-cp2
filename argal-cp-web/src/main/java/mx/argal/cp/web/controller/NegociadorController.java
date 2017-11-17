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
import mx.argal.cp.modelo.Negociador;
import mx.argal.cp.modelo.ProcedimientoSolicitado;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.servicios.NegociadorServicio;
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
@RequestMapping("/negociador")
public class NegociadorController {
	
	public final String ROLE_ADMINISTRADOR="ROLE_ADMINISTRADOR";
	public final String ROLE_IMPLANT="ROLE_IMPLANT";
	public final String ROLE_CLIENTE="ROLE_CLIENTE";
	
	@Autowired
	public NegociadorServicio negociadorServicio;
			
	@RequestMapping(value="/getsolicitudesnegociador",method = RequestMethod.POST)
    @ResponseBody
    public List obtenerSolicitudesNegociador(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>getsols negociador!!!"+ solicitudCirugiaProgramada.getTipoSolicitudCirugiaProgramada());
		System.out.println("<OTIKA>getSolicitud!!!"+ request.getSession().getAttribute("idNegociadorSession").toString());    	    	
		Negociador negociador = new Negociador();
		negociador.setIdNegociador(Integer.parseInt(request.getSession().getAttribute("idNegociadorSession").toString()));
		solicitudCirugiaProgramada.setNegociador(negociador);
		return this.negociadorServicio.obtenerSolicitudesNegociador(solicitudCirugiaProgramada);    	  
	}

	@RequestMapping(value="/cambiarstatusnegociada",method = RequestMethod.POST)
    @ResponseBody
    public Boolean cambiarStatusDictaminada(@ModelAttribute(value="solicitud") SolicitudCirugiaProgramada solicitudCirugiaProgramada, HttpServletRequest request){
		System.out.println("<OTIKA>Cambiar status negociada!!!");
		try {
			this.negociadorServicio.cambiarStatusByParams(solicitudCirugiaProgramada,5);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/negociar_procedimiento",method = RequestMethod.POST)
    @ResponseBody
    public Boolean negociarProcedimiento(@ModelAttribute(value="procedimiento") ProcedimientoSolicitado procedimientoSolicitado, HttpServletRequest request){
		System.out.println("<OTIKA>Negociar Procedimiento!!!");
		try {
			this.negociadorServicio.negociarProcedimiento(procedimientoSolicitado);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/guardar_insumo_negociado",method = RequestMethod.POST)
    @ResponseBody
    public Boolean aceptarRechazarProcedimiento(@ModelAttribute(value="insumo") Insumo insumo, HttpServletRequest request){
		System.out.println("<OTIKA>negociando insumo!!!");
		try {
			Integer resp=this.negociadorServicio.guardarInsumoNegociado(insumo);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;    	  
	}
	
	@RequestMapping(value="/actualizarmontonegociado",method = RequestMethod.POST)
    @ResponseBody
    public Boolean actualizarMontoNegociado(@ModelAttribute(value="cirugiaSolicitada") CirugiaSolicitada cirugiaSolicitada, HttpServletRequest request){
		System.out.println("<OTIKA>guardar monto cirugia!!!");
		try {
			//Valor 1 dictamiando
			this.negociadorServicio.actualizarMonto(cirugiaSolicitada,2);
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
    	return this.negociadorServicio.getSolicitudById(solicitudCirugiaProgramada);    	  
	}
		
}
