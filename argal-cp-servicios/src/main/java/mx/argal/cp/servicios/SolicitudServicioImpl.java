package mx.argal.cp.servicios;

import mx.argal.cp.dao.SolicitudDao;
import mx.argal.cp.dao.UsuarioDao;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.modelo.Usuario;

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
	
}
