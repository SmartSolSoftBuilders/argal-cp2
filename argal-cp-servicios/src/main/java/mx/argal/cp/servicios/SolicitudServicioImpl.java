package mx.argal.cp.servicios;

import mx.argal.cp.dao.SolicitudDao;
import mx.argal.cp.dao.UsuarioDao;
import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.modelo.Usuario;

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
		return this.solicitudDao.guardarSolicitudCirugias(cirugiaSolicitada);
	}	
	
}
