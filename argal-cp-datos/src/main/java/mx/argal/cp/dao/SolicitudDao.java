package mx.argal.cp.dao;

import java.util.List;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;

public interface SolicitudDao {
	
	public Integer guardarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer actualizarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);

}
