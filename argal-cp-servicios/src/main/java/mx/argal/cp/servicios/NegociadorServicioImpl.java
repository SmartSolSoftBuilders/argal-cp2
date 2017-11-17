package mx.argal.cp.servicios;

import mx.argal.cp.dao.SolicitudDao;

import mx.argal.cp.dao.UsuarioDao;
import mx.argal.cp.modelo.Autorizador;
import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.Insumo;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.Negociador;
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
public class NegociadorServicioImpl implements NegociadorServicio {

	@Autowired
	public SolicitudDao solicitudDao;

	@Override
	public Integer negociarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado) {
		// TODO Auto-generated method stub
		return this.solicitudDao.negociarProcedimiento(procedimientoSolicitado);
	}
	
	@Override
	public Integer guardarInsumoNegociado(Insumo insumo) {
		return this.solicitudDao.guardarInsumoNegociado(insumo);
	}

	@Override
	public List obtenerSolicitudesNegociador(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		List<SolicitudCirugiaProgramada> solicitudes = this.solicitudDao.obtenerSolicitudesByStatus(solicitudCirugiaProgramada.getStatus());
		List solicitudesReturn = new ArrayList();
		List solicitudReturn = new ArrayList();
		System.out.println(solicitudes);
		String status[] = {"","","RECIBIDA","NEGOCIADA","EN NEGOCIACIÓN","ACEPTADA"};		
		try{
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
			for (int i=0;i<solicitudes.size();i++){		
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
				solicitudReturn.add(status[solicitudes.get(i).getStatus()]);
				if (solicitudes.get(i).getStatus()==4){
					solicitudReturn.add("<a href='#' onclick='loadPageData(300,"+solicitudes.get(i).getIdSolicitudCirugiaProgramada()+")'\">Negociar</a>");
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
	public Integer cambiarStatusByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada, Integer status) {
		// TODO Auto-generated method stub		
		Integer resp =  this.solicitudDao.cambiarStatusByParams(solicitudCirugiaProgramada.getIdSolicitudCirugiaProgramada(), status);
		if (status==5) {
			//Se buscará un dictaminador disponible para asignarle la solicitud			
			Autorizador autorizador = new Autorizador();
			autorizador.setIdAutorizador(1);
			solicitudCirugiaProgramada.setAutorizador(autorizador);			
			this.solicitudDao.asignarSolicitudAAutorizador(solicitudCirugiaProgramada);
		}
		return resp;
	}

	@Override
	public SolicitudCirugiaProgramada getSolicitudById(SolicitudCirugiaProgramada solicitudCirugiaProgramada) {
		// TODO Auto-generated method stub
		return this.solicitudDao.getSolicitudById(solicitudCirugiaProgramada);
	}
	
	@Override
	public Integer actualizarMonto(CirugiaSolicitada cirugiaSolicitada, int i) {
		// TODO Auto-generated method stub
		return this.solicitudDao.actualizarMontoNegociado(cirugiaSolicitada);
	}
}
