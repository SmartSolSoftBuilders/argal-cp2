package mx.argal.cp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import mx.argal.cp.modelo.Autorizador;
import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.Dictaminador;
import mx.argal.cp.modelo.Insumo;
import mx.argal.cp.modelo.Negociador;
import mx.argal.cp.modelo.ProcedimientoSolicitado;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;

public interface SolicitudDao {
	
	public Integer guardarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer guardarSolicitudCirugias(CirugiaSolicitada cirugiaSolicitada);
	public Integer guardarProcedimientoSolicitado(ProcedimientoSolicitado procedimientoSolicitado);
	public Integer guardarAsignarProcedimientos(CirugiaSolicitada cirugiaSolicitada);
	public Integer actualizarSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer guardarSolicitudByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public SolicitudCirugiaProgramada getSolicitudById(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public List<SolicitudCirugiaProgramada> obtenerSolicitudesByMedTrat(@Param("idMedicoTratante")Integer idMedicoTratante);
	public List<SolicitudCirugiaProgramada> obtenerSolicitudesByStatus(@Param("status")Integer status);
	public CirugiaSolicitada obtenerCirugiaSolicitadaById(@Param("idCirugiaSolicitada") Integer idCirugiaSolicitada);
	public Integer actualizarCirugiaSolicitada(CirugiaSolicitada cirugiaSolicitada);
	public Integer actualizarProcedimientoSolicitado(ProcedimientoSolicitado procedimientoUno);
	public Integer guardarSolicitudProgramacionByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer actualizarSolicitudRiesgosYPersonalRequeridoByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer actualizarInsumo(Insumo insumo);
	public Integer guardarInsumo(Insumo insumo);
	public Integer guardarInsumoNegociado(Insumo insumo);
	public Integer guardarInsumoAutorizado(Insumo insumo);
	public Integer cambiarStatusByParams (@Param("idSolicitudCirugiaProgramada")Integer idSolicitudCirugiaProgramada, @Param("status")Integer status);
	public Integer aceptarRechazarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado);
	public Integer aceptarRechazarInsumo(Insumo insumo);
	public Integer negociarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado);
	public Integer aceptarRechazarAutorizarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado);
	public Integer asignarSolicitudADictamiandor(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer asignarSolicitudANegociador(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer asignarSolicitudAAutorizador(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public List<SolicitudCirugiaProgramada> obtenerSolicitudesByDictaminador(Dictaminador dictaminador);
	public List<SolicitudCirugiaProgramada> obtenerSolicitudesByNegociador(Negociador negociador);
	public List<SolicitudCirugiaProgramada> obtenerSolicitudesByAutorizador(Autorizador autorizador);
	public Integer guardarMotivoRechazoSolicitud(SolicitudCirugiaProgramada solicitudCirugiaProgramada);

	
}
