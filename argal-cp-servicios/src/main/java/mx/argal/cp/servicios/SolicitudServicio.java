package mx.argal.cp.servicios;

import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.modelo.Usuario;
 
public interface SolicitudServicio {
	
	public Integer guardarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Boolean actualizarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	
}
