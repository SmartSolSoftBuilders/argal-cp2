package mx.argal.cp.modelo;

import java.util.Date;

public class SolicitudCirugiaProgramada extends BaseModelo {
	
	private Integer idSolicitudCirugiaProgramada;
	private String nombreBeneficiarioSolicitudCirugiaProgramada;
	private String apPBeneficiarioSolicitudCirugiaProgramada;
	private String apMBeneficiarioSolicitudCirugiaProgramada;
	private String edadBeneficiarioSolicitudCirugiaProgramada;
	private String sexoBeneficiarioSolicitudCirugiaProgramada;
	private String numNominaBeneficiarioSolicitudCirugiaProgramada;
	private Date fechaSolicitudCirugiaProgramada;
	private Date fechaSolicitudElaboracion; 
	private Integer tipoSolicitudCirugiaProgramada;
	private Integer status;
	private String empresaBeneficiarioSolicitudCirugiaProgramada;
	private MedicoTratante medicoTratante;
	private Empresa empresa;
	private CirugiaSolicitada cirugiaSolicitadaUno;
	private CirugiaSolicitada cirugiaSolicitadaDos;
			
	public Integer getIdSolicitudCirugiaProgramada() {
		return idSolicitudCirugiaProgramada;
	}			
	public MedicoTratante getMedicoTratante() {
		return medicoTratante;
	}
	public void setMedicoTratante(MedicoTratante medicoTratante) {
		this.medicoTratante = medicoTratante;
	}
	public String getEmpresaBeneficiarioSolicitudCirugiaProgramada() {
		return empresaBeneficiarioSolicitudCirugiaProgramada;
	}
	public void setEmpresaBeneficiarioSolicitudCirugiaProgramada(String empresaBeneficiarioSolicitudCirugiaProgramada) {
		this.empresaBeneficiarioSolicitudCirugiaProgramada = empresaBeneficiarioSolicitudCirugiaProgramada;
	}
	public void setIdSolicitudCirugiaProgramada(Integer idSolicitudCirugiaProgramada) {
		this.idSolicitudCirugiaProgramada = idSolicitudCirugiaProgramada;
	}
	public String getNombreBeneficiarioSolicitudCirugiaProgramada() {
		return nombreBeneficiarioSolicitudCirugiaProgramada;
	}
	public void setNombreBeneficiarioSolicitudCirugiaProgramada(String nombreBeneficiarioSolicitudCirugiaProgramada) {
		this.nombreBeneficiarioSolicitudCirugiaProgramada = nombreBeneficiarioSolicitudCirugiaProgramada;
	}
	public String getApPBeneficiarioSolicitudCirugiaProgramada() {
		return apPBeneficiarioSolicitudCirugiaProgramada;
	}
	public void setApPBeneficiarioSolicitudCirugiaProgramada(String apPBeneficiarioSolicitudCirugiaProgramada) {
		this.apPBeneficiarioSolicitudCirugiaProgramada = apPBeneficiarioSolicitudCirugiaProgramada;
	}
	public String getApMBeneficiarioSolicitudCirugiaProgramada() {
		return apMBeneficiarioSolicitudCirugiaProgramada;
	}
	public void setApMBeneficiarioSolicitudCirugiaProgramada(String apMBeneficiarioSolicitudCirugiaProgramada) {
		this.apMBeneficiarioSolicitudCirugiaProgramada = apMBeneficiarioSolicitudCirugiaProgramada;
	}
	public String getEdadBeneficiarioSolicitudCirugiaProgramada() {
		return edadBeneficiarioSolicitudCirugiaProgramada;
	}
	public void setEdadBeneficiarioSolicitudCirugiaProgramada(String edadBeneficiarioSolicitudCirugiaProgramada) {
		this.edadBeneficiarioSolicitudCirugiaProgramada = edadBeneficiarioSolicitudCirugiaProgramada;
	}
	public String getSexoBeneficiarioSolicitudCirugiaProgramada() {
		return sexoBeneficiarioSolicitudCirugiaProgramada;
	}
	public void setSexoBeneficiarioSolicitudCirugiaProgramada(String sexoBeneficiarioSolicitudCirugiaProgramada) {
		this.sexoBeneficiarioSolicitudCirugiaProgramada = sexoBeneficiarioSolicitudCirugiaProgramada;
	}
	public String getNumNominaBeneficiarioSolicitudCirugiaProgramada() {
		return numNominaBeneficiarioSolicitudCirugiaProgramada;
	}
	public void setNumNominaBeneficiarioSolicitudCirugiaProgramada(String numNominaBeneficiarioSolicitudCirugiaProgramada) {
		this.numNominaBeneficiarioSolicitudCirugiaProgramada = numNominaBeneficiarioSolicitudCirugiaProgramada;
	}
	public Date getFechaSolicitudCirugiaProgramada() {
		return fechaSolicitudCirugiaProgramada;
	}
	public void setFechaSolicitudCirugiaProgramada(Date fechaSolicitudCirugiaProgramada) {
		this.fechaSolicitudCirugiaProgramada = fechaSolicitudCirugiaProgramada;
	}
	public Date getFechaSolicitudElaboracion() {
		return fechaSolicitudElaboracion;
	}
	public void setFechaSolicitudElaboracion(Date fechaSolicitudElaboracion) {
		this.fechaSolicitudElaboracion = fechaSolicitudElaboracion;
	}
	public Integer getTipoSolicitudCirugiaProgramada() {
		return tipoSolicitudCirugiaProgramada;
	}
	public void setTipoSolicitudCirugiaProgramada(Integer tipoSolicitudCirugiaProgramada) {
		this.tipoSolicitudCirugiaProgramada = tipoSolicitudCirugiaProgramada;
	}		
	public void setStatus(Integer status) {
		this.status = status; 
	}	
	public Integer getStatus() {
		return this.status;
	}	
	public Empresa getEmpresa() {
		return empresa;
	}
	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}
	public CirugiaSolicitada getCirugiaSolicitadaUno() {
		return cirugiaSolicitadaUno;
	}
	public void setCirugiaSolicitadaUno(CirugiaSolicitada cirugiaSolicitadaUno) {
		this.cirugiaSolicitadaUno = cirugiaSolicitadaUno;
	}
	public CirugiaSolicitada getCirugiaSolicitadaDos() {
		return cirugiaSolicitadaDos;
	}
	public void setCirugiaSolicitadaDos(CirugiaSolicitada cirugiaSolicitadaDos) {
		this.cirugiaSolicitadaDos = cirugiaSolicitadaDos;
	}
	
	public SolicitudCirugiaProgramada(){
		
	}
	
	public SolicitudCirugiaProgramada(Integer idSolicitudCirugiaProgramada,
			String nombreBeneficiarioSolicitudCirugiaProgramada, String apPBeneficiarioSolicitudCirugiaProgramada,
			String apMBeneficiarioSolicitudCirugiaProgramada, String edadBeneficiarioSolicitudCirugiaProgramada,
			String sexoBeneficiarioSolicitudCirugiaProgramada, String numNominaBeneficiarioSolicitudCirugiaProgramada,
			Date fechaSolicitudCirugiaProgramada, Date fechaSolicitudElaboracion,
			Integer tipoSolicitudCirugiaProgramada, Integer status,
			String empresaBeneficiarioSolicitudCirugiaProgramada, MedicoTratante medicoTratante, Empresa empresa,
			CirugiaSolicitada cirugiaSolicitadaUno, CirugiaSolicitada cirugiaSolicitadaDos) {
		super();
		this.idSolicitudCirugiaProgramada = idSolicitudCirugiaProgramada;
		this.nombreBeneficiarioSolicitudCirugiaProgramada = nombreBeneficiarioSolicitudCirugiaProgramada;
		this.apPBeneficiarioSolicitudCirugiaProgramada = apPBeneficiarioSolicitudCirugiaProgramada;
		this.apMBeneficiarioSolicitudCirugiaProgramada = apMBeneficiarioSolicitudCirugiaProgramada;
		this.edadBeneficiarioSolicitudCirugiaProgramada = edadBeneficiarioSolicitudCirugiaProgramada;
		this.sexoBeneficiarioSolicitudCirugiaProgramada = sexoBeneficiarioSolicitudCirugiaProgramada;
		this.numNominaBeneficiarioSolicitudCirugiaProgramada = numNominaBeneficiarioSolicitudCirugiaProgramada;
		this.fechaSolicitudCirugiaProgramada = fechaSolicitudCirugiaProgramada;
		this.fechaSolicitudElaboracion = fechaSolicitudElaboracion;
		this.tipoSolicitudCirugiaProgramada = tipoSolicitudCirugiaProgramada;
		this.status = status;
		this.empresaBeneficiarioSolicitudCirugiaProgramada = empresaBeneficiarioSolicitudCirugiaProgramada;
		this.medicoTratante = medicoTratante;
		this.empresa = empresa;
		this.cirugiaSolicitadaUno = cirugiaSolicitadaUno;
		this.cirugiaSolicitadaDos = cirugiaSolicitadaDos;
	}
	
}
