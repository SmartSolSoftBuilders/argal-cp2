package mx.argal.cp.servicios;

import java.util.List;

import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.Insumo;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.ProcedimientoSolicitado;
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
	public Boolean actualizarSolicitudProgramacionC(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Boolean actualizarSolicitudRiesgosYPersonalRequeridoByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer actualizarInsumo(Insumo insumo);
	public Integer guardarInsumo(Insumo insumo);	
	public Integer cambiarStatusByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada, Integer status);
	public Integer aceptarRechazarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado);
	public Integer aceptarRechazarInsumo(Insumo insumo);
	public Integer guardarInsumoNegociado(Insumo insumo);
	public Integer guardarInsumoAutorizado(Insumo insumo);
	public List obtenerSolicitudesNegociador(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer negociarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado);
	public List obtenerSolicitudesAutorizador(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer autorizarRechazarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado);
	public List obtenerSolicitudesDictaminador(SolicitudCirugiaProgramada solicitudCirugiaProgramada);	
}
