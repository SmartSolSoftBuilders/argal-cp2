package mx.argal.cp.servicios;

import java.util.List;

import mx.argal.cp.modelo.CirugiaSolicitada;
import mx.argal.cp.modelo.Insumo;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.ProcedimientoSolicitado;
import mx.argal.cp.modelo.SolicitudCirugiaProgramada;
import mx.argal.cp.modelo.Usuario;
 
public interface NegociadorServicio {
	
	public List obtenerSolicitudesNegociador(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer cambiarStatusByParams(SolicitudCirugiaProgramada solicitudCirugiaProgramada, Integer status);
	public Integer negociarProcedimiento(ProcedimientoSolicitado procedimientoSolicitado);
	public Integer guardarInsumoNegociado(Insumo insumo);
	public SolicitudCirugiaProgramada getSolicitudById(SolicitudCirugiaProgramada solicitudCirugiaProgramada);
	public Integer actualizarMonto(CirugiaSolicitada cirugiaSolicitada, int i);
}
