package mx.argal.cp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;

public interface SolicitudDao {
	
	public Integer guardarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer guardarSolicitudCirugias(CirugiaSolicitada cirugiaSolicitada);	
	public Integer actualizarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer guardarSolicitudByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public SolicitudCirugiaProgramada getSolicitudById(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public List<SolicitudCirugiaProgramada> obtenerSolicitudesByMedTrat(@Param("idMedicoTratante")Integer idMedicoTratante);
	public List<SolicitudCirugiaProgramada> obtenerSolicitudesByStatus(@Param("status")Integer status);	

}
