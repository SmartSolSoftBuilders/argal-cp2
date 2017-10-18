package mx.argal.cp.servicios;

import java.util.List;

import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.modelo.Usuario;
 
public interface SolicitudServicio {
	
	public Integer guardarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Boolean actualizarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public SolicitudCirugiaProgramada getSolicitudById(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public List obtenerSolicitudesByMedTrat(MedicoTratante medicoTratante);
	
}
