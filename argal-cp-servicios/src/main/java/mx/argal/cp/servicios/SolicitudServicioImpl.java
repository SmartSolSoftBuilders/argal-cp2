package mx.argal.cp.servicios;

import mx.argal.cp.dao.SolicitudDao;
import mx.argal.cp.dao.UsuarioDao;
import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.Insumo;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.modelo.Usuario;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import mx.sep.sajja.datos.vo.FiltroBusquedaVO;


@Service
public class SolicitudServicioImpl implements SolicitudServicio {

	@Autowired
	public SolicitudDao solicitudDao;

	@Override
	public Integer guardarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		try {
			this.solicitudDao.guardarSolicitud(solicitudCirugiaProgramada);
			Integer idSolicitudGenerado = solicitudCirugiaProgramada.getId().intValue();		
			solicitudCirugiaProgramada.setIdSolicitudCirugiaProgramada(idSolicitudGenerado);
			this.solicitudDao.guardarSolicitudByParams(solicitudCirugiaProgramada);
			return idSolicitudGenerado;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	@Override
	public Boolean actualizarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		if (this.solicitudDao.guardarSolicitudByParams(solicitudCirugiaProgramada)!=0)
			return true;
		return false;
	}
	
	@Override
	public Boolean actualizarSolicitudProgramacionC(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		if (this.solicitudDao.guardarSolicitudProgramacionByParams(solicitudCirugiaProgramada)!=0)
			return true;
		return false;
	}
	
	@Override
	public Boolean actualizarSolicitudRiesgosYPersonalRequeridoByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		if (this.solicitudDao.actualizarSolicitudRiesgosYPersonalRequeridoByParams(solicitudCirugiaProgramada)!=0)
			return true;
		return false;
	}

	@Override
	public SolicitudCirugiaProgramada getSolicitudById(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		return this.solicitudDao.getSolicitudById(solicitudCirugiaProgramada);
	}

	@Override
	public List obtenerSolicitudesByMedTrat(MedicoTratante medicoTratante) {
		// TODO Auto-generated method stub
		List<SolicitudCirugiaProgramada> solicitudes = this.solicitudDao.obtenerSolicitudesByMedTrat(medicoTratante.getIdMedicoTratante());
		List solicitudesReturn = new ArrayList();
		List solicitudReturn = new ArrayList();
		System.out.println(solicitudes);
		String status[] = {"","CAPTURANDO","ENVIADA","RECHAZADA","ACEPTADA"};
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");          
		try{
			for (int i=0;i<solicitudes.size();i++){		
				solicitudReturn = new ArrayList();
				solicitudReturn.add(solicitudes.get(i).getIdSolicitudCirugiaProgramada());
				solicitudReturn.add(solicitudes.get(i).getApPBeneficiarioSolicitudCirugiaProgramada() + " " + solicitudes.get(i).getApMBeneficiarioSolicitudCirugiaProgramada() + " " + solicitudes.get(i).getNombreBeneficiarioSolicitudCirugiaProgramada());
				solicitudReturn.add("DALINDE");
				solicitudReturn.add("PROC1");				
				solicitudReturn.add(format1.format(solicitudes.get(i).getFechaSolicitudElaboracion()));
				solicitudReturn.add(status[solicitudes.get(i).getStatus()]);
				if (solicitudes.get(i).getStatus()==1){
					solicitudReturn.add("<a href='#' onclick='loadPageData(100,"+solicitudes.get(i).getIdSolicitudCirugiaProgramada()+")'\">Seguir Capturando</a>" + "<a href='#' onclick='loadPageData(100,"+solicitudes.get(i).getIdSolicitudCirugiaProgramada()+")'\">Eliminar</a>");
				}
				
				if (solicitudes.get(i).getStatus()==4){
					solicitudReturn.add("Carta Autorización:<img  src=\"static/img/pdf-icon.png\" onclick =\"window.open('static/img/cartaaut.pdf','_blank', 'width=800,height=800');\" width=\"25px\"/>\n");
				}
				else
					solicitudReturn.add("-");
				solicitudesReturn.add(solicitudReturn);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return solicitudesReturn;
	}

	@Override
	public List obtenerSolicitudesAll(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		List<SolicitudCirugiaProgramada> solicitudes = this.solicitudDao.obtenerSolicitudesByStatus(solicitudCirugiaProgramada.getStatus());
		List solicitudesReturn = new ArrayList();
		List solicitudReturn = new ArrayList();
		System.out.println(solicitudes);
		String status[] = {"","RECIBIDA","ENVIADA","RECHAZADA","ACEPTADA"};		
		try{
			for (int i=0;i<solicitudes.size();i++){		
				solicitudReturn = new ArrayList();
				solicitudReturn.add(solicitudes.get(i).getIdSolicitudCirugiaProgramada());
				solicitudReturn.add(solicitudes.get(i).getApPBeneficiarioSolicitudCirugiaProgramada() + " " + solicitudes.get(i).getApMBeneficiarioSolicitudCirugiaProgramada() + " " + solicitudes.get(i).getNombreBeneficiarioSolicitudCirugiaProgramada());
				solicitudReturn.add("DALINDE");
				solicitudReturn.add("PROC1");
				solicitudReturn.add("2017-"+ (solicitudes.get(i).getFechaSolicitudElaboracion().getMonth()+1)+"-"+(solicitudes.get(i).getFechaSolicitudElaboracion().getDay()+1) );
				solicitudReturn.add(status[solicitudes.get(i).getStatus()]);
				if (solicitudes.get(i).getStatus()==1){
					solicitudReturn.add("<a href='#' onclick='loadPageData(200,"+solicitudes.get(i).getIdSolicitudCirugiaProgramada()+")'\">Dictaminar</a>");
				}
				else{
					solicitudReturn.add("-");
				}
				solicitudesReturn.add(solicitudReturn);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return solicitudesReturn;
	}

	@Override
	public Integer guardarSolicitudCirugias(CirugiaSolicitada cirugiaSolicitada) {
		// TODO Auto-generated method stub
		Integer verificar=0;
		verificar=this.solicitudDao.guardarSolicitudCirugias(cirugiaSolicitada);
		if (cirugiaSolicitada.getProcedimientoUno().getId()!=null) {
			this.solicitudDao.guardarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoUno());
		}		
		if (cirugiaSolicitada.getProcedimientoDos().getId()!=null) {
			this.solicitudDao.guardarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoDos());
		}
		if (cirugiaSolicitada.getProcedimientoTres().getId()!=null) {
			this.solicitudDao.guardarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoTres());
		}
		this.solicitudDao.guardarAsignarProcedimientos(cirugiaSolicitada);
		return verificar; 
	}
	
	@Override
	public Integer actulizarSolicitudCirugias(CirugiaSolicitada cirugiaSolicitada) {
		// TODO Auto-generated method stub
		Integer verificar=0;
		verificar=this.solicitudDao.actualizarCirugiaSolicitada(cirugiaSolicitada);
		cirugiaSolicitada.setId(cirugiaSolicitada.getIdCirugiaSolicitada().longValue());
		if (cirugiaSolicitada.getProcedimientoUno().getId()!=null) {
			if(cirugiaSolicitada.getProcedimientoUno().getIdProcedimientoSolicitado()==null) {
				System.out.println("Se crea el proc 1 porq no existia");
				this.solicitudDao.guardarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoUno());
				this.solicitudDao.guardarAsignarProcedimientos(cirugiaSolicitada);
			}
			else {
				System.out.println("Se actualiza el proc 1 porque ya existe");
				this.solicitudDao.actualizarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoUno());
			}
		}
		if (cirugiaSolicitada.getProcedimientoDos().getId()!=null) {
			if(cirugiaSolicitada.getProcedimientoDos().getIdProcedimientoSolicitado()==null) {
				System.out.println("Se crea el proc 2 porq no existia");				
				this.solicitudDao.guardarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoDos());
				System.out.println("Se crea el proc 2 porq no existia"+cirugiaSolicitada.getProcedimientoDos().getIdProcedimientoSolicitado());
				this.solicitudDao.guardarAsignarProcedimientos(cirugiaSolicitada);
			}
			else {
				System.out.println("Se actualiza el proc 2 porque ya existe");
				this.solicitudDao.actualizarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoDos());
			}
		}
		/*
		if (cirugiaSolicitada.getProcedimientoDos().getId()!=null) {
			this.solicitudDao.guardarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoDos());
		}
		if (cirugiaSolicitada.getProcedimientoTres().getId()!=null) {
			this.solicitudDao.guardarProcedimientoSolicitado(cirugiaSolicitada.getProcedimientoTres());
		}
		this.solicitudDao.guardarAsignarProcedimientos(cirugiaSolicitada);
		*/
		return verificar; 
	}

	@Override
	public CirugiaSolicitada obtenerCirugiaSolicitadaById(Integer idCirugiaSolicitada) {
		// TODO Auto-generated method stub
		try {
			CirugiaSolicitada cirugiaSolicitada = this.solicitudDao.obtenerCirugiaSolicitadaById(idCirugiaSolicitada);
			System.out.println(cirugiaSolicitada);
			return cirugiaSolicitada;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Integer actualizarInsumo(Insumo insumo) {
		// TODO Auto-generated method stub
		return this.solicitudDao.actualizarInsumo(insumo);
	}

	@Override
	public Integer guardarInsumo(Insumo insumo) {
		// TODO Auto-generated method stub
		return this.solicitudDao.guardarInsumo(insumo);
	}	
	
}
