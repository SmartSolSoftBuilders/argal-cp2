package mx.argal.cp.web.controller;

import java.util.ArrayList;


import java.util.List;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import mx.argal.seguridad.modelo.RolSeguridad;
import mx.argal.seguridad.modelo.UsuarioSeguridad;
import mx.argal.seguridad.servicios.MttoSeguridadServicio;
import mx.argal.seguridad.util.SeguridadUtil;
import mx.argal.cp.modelo.Dictaminador;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.servicios.MedicoTratanteServicio;
import mx.argal.cp.servicios.UsuarioServicio;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	public final String ROLE_ADMINISTRADOR="ROLE_ADMINISTRADOR";
	public final String ROLE_MEDICO_TRATANTE="ROLE_MEDICO_TRATANTE";
	public final String ROLE_DICTAMINADOR="ROLE_DICTAMINADOR";
	public final String ROLE_NEGOCIADOR="ROLE_NEGOCIADOR";
	public final String ROLE_AUTORIZADOR="ROLE_AUTORIZADOR";
			
	@Autowired
	private MttoSeguridadServicio mttoSeguridadServicio;
	@Autowired
	private MedicoTratanteServicio medicoTratanteServicio;

	//Test commit 
	@RequestMapping(method = RequestMethod.GET)
    public ModelAndView mostrarIndex(HttpServletRequest request){	    	    
    	UsuarioSeguridad usuario = SeguridadUtil.getUsuarioActual();    	
    	String rol="";
    	//System.out.println("<OTIKA>RFCenLogin:"+usuario.getNombre());
    	usuario.setNombre(usuario.getNombre().toUpperCase());
    	usuario.setPassword(usuario.getPassword().toUpperCase());
    	//System.out.println("<OTIKA>Login!"+((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getPrincipal().toString());    	
    	if ( ((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getAuthorities().size()>0){
    		Iterator it = ((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getAuthorities().iterator();
    		while (it.hasNext()){
    			rol=it.next().toString();
    			List<RolSeguridad> roles = new ArrayList<RolSeguridad>();
    			RolSeguridad rolS = new RolSeguridad();
    			rolS.setRol(rol);
    			roles.add(rolS);
    			usuario.setRoles(roles);
    			request.getSession().setAttribute("rolUser",rol);
    			request.getSession().setAttribute("userSession",usuario.getUsername());    			
    			request.getSession().setAttribute("msj","Bienvenido "+usuario.getNombre());    			
    			break;
    		}   	 		
    	}     	
    	System.out.println(rol);
    	if ( rol.equals(ROLE_MEDICO_TRATANTE)) {    	    		
    		MedicoTratante medicoTratante = new MedicoTratante();
    		medicoTratante.setIdTUsuario(mttoSeguridadServicio.consultarUsuariosByUser(usuario).get(0).getId().intValue());
    		System.out.println("Buscando medtrat"+medicoTratante.getIdTUsuario());
    		medicoTratante=this.medicoTratanteServicio.obtenerMedicoTratanteByIdTUs(medicoTratante);
			request.getSession().setAttribute("idMedicoTratanteSession",medicoTratante.getIdTUsuario());
    		return new ModelAndView("main", "usuario", usuario);
    	}
    	
    	if ( rol.equals(ROLE_DICTAMINADOR)) {    	    		
    		Dictaminador dictaminador = new Dictaminador();    		
    		dictaminador.setIdTUsuario(mttoSeguridadServicio.consultarUsuariosByUser(usuario).get(0).getId().intValue());
    		System.out.println("Buscando medtrat"+dictaminador.getIdTUsuario());
			request.getSession().setAttribute("idDictaminadorSession",dictaminador.getIdTUsuario());
    		return new ModelAndView("main", "usuario", usuario);
    	}
    	if (rol.equals(ROLE_NEGOCIADOR) || rol.equals(ROLE_AUTORIZADOR)) {    		
    		return new ModelAndView("main", "usuario", usuario);
    	}
    	    	    	    	  
    	return new ModelAndView("v2.0/eventos/eventos", "usuario", usuario);
    }
	
	@RequestMapping(value="/getpage",method = RequestMethod.GET)  
    public ModelAndView loadPage(@RequestParam String page,HttpServletRequest request){
		//System.out.println(page);
		UsuarioSeguridad usuario = SeguridadUtil.getUsuarioActual();    	
    	String rol="";
    	//System.out.println("<OTIKA>RFCenLogin:"+usuario.getNombre());
    	usuario.setNombre(usuario.getNombre().toUpperCase());
    	usuario.setPassword(usuario.getPassword().toUpperCase());
    	//System.out.println("<OTIKA>Login!"+((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getPrincipal().toString());    	
    	if ( ((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getAuthorities().size()>0){
    		Iterator it = ((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getAuthorities().iterator();
    		while (it.hasNext()){
    			rol=it.next().toString();
    			request.getSession().setAttribute("rolUser",rol);
    			request.getSession().setAttribute("userSession",usuario.getUsername());    			
    			request.getSession().setAttribute("msj","Bienvenido "+usuario.getNombre());
    			break;
    		}    		
    	}    	
    	if (page.equals("2")){				
			return new ModelAndView("v2.0/reportes/versus/repo1");
		}
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/getpagecontent",method = RequestMethod.GET)  
    public ModelAndView loadPageContent(@RequestParam String page,@RequestParam String param,HttpServletRequest request){
		//System.out.println(page);
		UsuarioSeguridad usuario = SeguridadUtil.getUsuarioActual();    	
    	String rol="";
    	System.out.println("<OTIKA>RFCenLogin:"+usuario.getNombre());
    	usuario.setNombre(usuario.getNombre().toUpperCase());
    	usuario.setPassword(usuario.getPassword().toUpperCase());
    	//System.out.println("<OTIKA>Login!"+((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getPrincipal().toString());    	
    	if ( ((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getAuthorities().size()>0){
    		Iterator it = ((SecurityContextImpl)request.getSession().getAttribute("SPRING_SECURITY_CONTEXT")).getAuthentication().getAuthorities().iterator();
    		while (it.hasNext()){
    			rol=it.next().toString();
    			request.getSession().setAttribute("rolUser",rol);
    			request.getSession().setAttribute("userSession",usuario.getUsername());    			
    			request.getSession().setAttribute("msj","Bienvenido "+usuario.getNombre());
    			break;
    		}    		
    	}    	
    	if (page.equals("100")){    		
    		ModelMap modelo = new ModelMap();
    		modelo.addAttribute("idSolicitud", param);    		
			return new ModelAndView("med_tratante/solicitar_cirugiap",modelo);
		}
    	if (page.equals("200")){    		
    		ModelMap modelo = new ModelMap();
    		modelo.addAttribute("idSolicitud", param);    		
			return new ModelAndView("dictaminador/ver_solicitud",modelo);
		}
    	if (page.equals("300")){    		
    		ModelMap modelo = new ModelMap();
    		modelo.addAttribute("idSolicitud", param);    		
			return new ModelAndView("negociador/ver_solicitud",modelo);
		}
    	if (page.equals("400")){    		
    		ModelMap modelo = new ModelMap();
    		modelo.addAttribute("idSolicitud", param);    		
			return new ModelAndView("autorizador/ver_solicitud",modelo);
		}
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/obteneruserseguridad",method = RequestMethod.POST)
    @ResponseBody
    //public boolean guardarImplant(@ModelAttribute(value="implant") Implant implant, BindingResult result){
    public UsuarioSeguridad obtenerUsuarioSeguridad(HttpServletRequest request, @RequestBody UsuarioSeguridad usuario){		
    	//System.out.println("<OTIKA>Obteniendo UsuarioSeguridad!!!"+request.getSession().getAttribute("userSession"));
    	if (request.getSession().getAttribute("userSession")!=null)
    		usuario.setUsername(request.getSession().getAttribute("userSession").toString());
    	List<UsuarioSeguridad> userTmp = new ArrayList<UsuarioSeguridad>();
    	userTmp=this.mttoSeguridadServicio.consultarUsuariosByUser(usuario);
    	//System.out.println(userTmp.get(0));
    	//System.out.println(request.getSession().getAttribute("rolUser"));
    	if (userTmp!=null){
    		if (request.getSession().getAttribute("rolUser").equals(ROLE_ADMINISTRADOR))
    			userTmp.get(0).setTipoUsuario(3);
    		if (request.getSession().getAttribute("rolUser").equals(ROLE_DICTAMINADOR))
    			userTmp.get(0).setTipoUsuario(2);
    		if (request.getSession().getAttribute("rolUser").equals(ROLE_MEDICO_TRATANTE))
    			userTmp.get(0).setTipoUsuario(1);
    		return userTmp.get(0);
    	}
    	else
    		return null;
	}
	
	@RequestMapping(value="/cambiarpassword",method = RequestMethod.POST)
    @ResponseBody
    //public boolean guardarImplant(@ModelAttribute(value="implant") Implant implant, BindingResult result){
    public UsuarioSeguridad cambiarPasswordSeguridad(HttpServletRequest request, @RequestBody UsuarioSeguridad usuario){		
    	//System.out.println("<OTIKA>Obteniendo UsuarioSeguridad cambiar psw!!!"+request.getSession().getAttribute("userSession"));
    	//System.out.println(usuario.getPassword());    	
    	if (request.getSession().getAttribute("userSession")!=null)    	
    		usuario.setUsername(request.getSession().getAttribute("userSession").toString());
    	List<UsuarioSeguridad> userTmp = new ArrayList<UsuarioSeguridad>();
    	userTmp=this.mttoSeguridadServicio.consultarUsuariosByUser(usuario);
    	if (userTmp.size()>0){    		
    		usuario.setPassword(usuario.getPassword().toUpperCase());
    		mttoSeguridadServicio.actualizarPassword(usuario);
    	}
    	return null;
	}

}
