package mx.argal.cp.servicios;

import mx.argal.cp.dao.SolicitudDao;

import mx.argal.cp.dao.UsuarioDao;
import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.Insumo;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.ProcedimientoSolicitado;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.modelo.Usuario;
import mx.argal.cp.modelo.Dictaminador;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import mx.sep.sajja.datos.vo.FiltroBusquedaVO;


@Service
public class DictaminadorServicioImpl implements DictaminadorServicio {

	@Autowired
	public SolicitudDao solicitudDao;

	@Override
	public List obtenerSolicitudesDictaminador(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		List<SolicitudCirugiaProgramada> solicitudes = this.solicitudDao.obtenerSolicitudesByDictaminador(solicitudCirugiaProgramada.getDictaminador());
		List solicitudesReturn = new ArrayList();
		List solicitudReturn = new ArrayList();
		System.out.println(solicitudes);
		String status[] = {"","","RECIBIDA","NEGOCIADA","RECHAZADA","ACEPTADA"};		
		try{
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
			for (int i=0;i<solicitudes.size();i++){		
				if (solicitudes.get(i).getStatus()==2) {
					solicitudReturn = new ArrayList();
					solicitudReturn.add(solicitudes.get(i).getIdSolicitudCirugiaProgramada());
					solicitudReturn.add(solicitudes.get(i).getApPBeneficiarioSolicitudCirugiaProgramada() + " " + solicitudes.get(i).getApMBeneficiarioSolicitudCirugiaProgramada() + " " + solicitudes.get(i).getNombreBeneficiarioSolicitudCirugiaProgramada());
					if (solicitudes.get(i).getHospital()!=null) 
						solicitudReturn.add(solicitudes.get(i).getHospital().getNombreHospital());			
					else
						solicitudReturn.add("Sin información");
					String procedimientos ="";
					if (solicitudes.get(i).getCirugiaSolicitadaUno()!=null){
						if (solicitudes.get(i).getCirugiaSolicitadaUno().getProcedimientoUno()!=null) 
							procedimientos += solicitudes.get(i).getCirugiaSolicitadaUno().getProcedimientoUno().getCpt().getDescripcion();
						if (solicitudes.get(i).getCirugiaSolicitadaUno().getProcedimientoDos()!=null) 
							procedimientos += ", "+solicitudes.get(i).getCirugiaSolicitadaUno().getProcedimientoDos().getCpt().getDescripcion();
						if (solicitudes.get(i).getCirugiaSolicitadaUno().getProcedimientoTres()!=null) 
							procedimientos += ", "+solicitudes.get(i).getCirugiaSolicitadaUno().getProcedimientoTres().getCpt().getDescripcion();
						solicitudReturn.add(procedimientos);
					}
					else
						solicitudReturn.add("Error en la solicitud!");
					solicitudReturn.add(format1.format(solicitudes.get(i).getFechaSolicitudElaboracion()));
					solicitudReturn.add(solicitudes.get(i).getMedicoTratante().getNombreMedicoTratante()+" "+solicitudes.get(i).getMedicoTratante().getAppMedicoTratante()+" "+solicitudes.get(i).getMedicoTratante().getApmMedicoTratante());
					if (solicitudes.get(i).getStatus()==2){
						solicitudReturn.add("<a href='#' onclick='loadPageData(200,"+solicitudes.get(i).getIdSolicitudCirugiaProgramada()+")'\">Dictaminar</a>");
					}
					else{
						solicitudReturn.add("-");
					}
					solicitudesReturn.add(solicitudReturn);
					}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return solicitudesReturn;
	}
	
	@Override
	public Integer cambiarStatusByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada,Integer status) {
		// TODO Auto-generated method stub		
		Integer resp =  this.solicitudDao.cambiarStatusByParams(solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada(), status);
		if (status==2) {
			//Se buscará un dictaminador disponible para asignarle la solicitud			
			Dictaminador dictaminador = new Dictaminador();
			dictaminador.setIdDictaminador(1);
			solicitudCirugiaProgramada.setDictaminador(dictaminador);			
			this.solicitudDao.asignarSolicitudADictamiandor(solicitudCirugiaProgramada);
		}
		if (status==3) {
			//Se buscará un dictaminador disponible para asignarle la solicitud								
			this.solicitudDao.guardarMotivoRechazoSolicitud(solicitudCirugiaProgramada);
		}
		return resp;
	}
	
	@Override
	public Integer aceptarRechazarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado) {
		// TODO Auto-generated method stub
		return this.solicitudDao.aceptarRechazarProcedimiento(procedimientoSolicitado);
	}
	
	@Override
	public Integer aceptarRechazarInsumo(Insumo insumo) {
		return this.solicitudDao.aceptarRechazarInsumo(insumo);
	}

}
