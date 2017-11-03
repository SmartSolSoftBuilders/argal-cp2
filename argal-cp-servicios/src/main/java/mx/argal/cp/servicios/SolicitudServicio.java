package mx.argal.cp.servicios;

import java.util.List;

import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.modelo.Usuario;
 
public interface SolicitudServicio {
	
	public Integer guardarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer guardarSolicitudCirugias(CirugiaSolicitada cirugiaSolicitada);	
	public Boolean actualizarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public SolicitudCirugiaProgramada getSolicitudById(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public List obtenerSolicitudesByMedTrat(MedicoTratante medicoTratante);
	public List obtenerSolicitudesAll(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public CirugiaSolicitada obtenerCirugiaSolicitadaById(Integer idCirugiaSolicitada);
	public Integer actulizarSolicitudCirugias(CirugiaSolicitada cirugiaSolicitada);
	
}
