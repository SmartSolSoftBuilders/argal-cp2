package mx.argal.cp.web.controller;

import java.io.File;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.StringReader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Date;
import java.util.Iterator;

import org.apache.commons.codec.Charsets;
import org.apache.commons.io.IOUtils;
import org.apache.ibatis.type.ByteTypeHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.argal.cp.modelo.Hospital;
import mx.argal.cp.servicios.HospitalServicio;
import mx.argal.seguridad.util.SeguridadUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.html.simpleparser.HTMLWorker;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.codec.Base64.InputStream;

@Controller
@RequestMapping("/hospital")
public class HospitalController {
	
	@Autowired
	public HospitalServicio hospitalServicio;
	
	public final String ROLE_ADMINISTRADOR="ROLE_ADMINISTRADOR";
	public final String ROLE_IMPLANT="ROLE_IMPLANT";
	public final String ROLE_CLIENTE="ROLE_CLIENTE";		
		
	@RequestMapping(value="/gethospitalesactivos",method = RequestMethod.POST)
    @ResponseBody
    public List<Hospital> obtenerEmpresas(){
		System.out.println("<OTIKA>GetHosp");
		try{
			return this.hospitalServicio.obtenerHospitalesActivos();
		}
		catch(Exception e){
		}
		return new ArrayList();		
	}

}
