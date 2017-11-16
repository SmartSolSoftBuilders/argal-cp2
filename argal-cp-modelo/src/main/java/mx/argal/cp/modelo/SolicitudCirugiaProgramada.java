package mx.argal.cp.modelo;

import java.util.Date;
import java.util.List;

public class SolicitudCirugiaProgramada extends BaseModelo {
	
	private Integer idSolicitudCirugiaProgramada;
	private String nombreBeneficiarioSolicitudCirugiaProgramada;
	private String apPBeneficiarioSolicitudCirugiaProgramada;
	private String apMBeneficiarioSolicitudCirugiaProgramada;
	private String nombreTitularSolicitudCirugiaProgramada;
	private String apPTitularSolicitudCirugiaProgramada;
	private String apMTitularSolicitudCirugiaProgramada;
	private String edadBeneficiarioSolicitudCirugiaProgramada;
	private String sexoBeneficiarioSolicitudCirugiaProgramada;
	private String numNominaBeneficiarioSolicitudCirugiaProgramada;
	private Date fechaSolicitudCirugiaProgramada;
	private Date fechaSolicitudElaboracion; 
	private Integer tipoSolicitudCirugiaProgramada;
	private Integer status;
	private String tiempoCirugia;
	private String tiempoSalaRecuperacion;
	private Integer resultadosPreoperatorios;
	private String describirResultadosPreoperatorios;
	private String empresaBeneficiarioSolicitudCirugiaProgramada;
	private MedicoTratante medicoTratante;
	private Empresa empresa;
	private Hospital hospital;
	private Integer riesgosQuirurgicosUno;
	private Integer riesgosQuirurgicosDos;
	private Integer riesgosQuirurgicosTres;
	private Integer riesgosQuirurgicosCuatro;
	private String nombreAyudanteUno;
	private String nombreAyudanteDos;
	private String nombreAnestesiologo;
	private String motivoRechazo;
	private CirugiaSolicitada cirugiaSolicitadaUno;
	private CirugiaSolicitada cirugiaSolicitadaDos;
	private List<Insumo> insumos;
	private Dictaminador dictaminador;
	private Negociador negociador;
	private Autorizador autorizador;
			
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
	public List<Insumo> getInsumos() {
		return insumos;
	}
	public void setInsumos(List<Insumo> insumos) {
		this.insumos = insumos;
	}		
	public Hospital getHospital() {
		return hospital;
	}
	public void setHospital(Hospital hospital) {
		this.hospital = hospital;
	}	
	public String getTiempoCirugia() {
		return tiempoCirugia;
	}
	public void setTiempoCirugia(String tiempoCirugia) {
		this.tiempoCirugia = tiempoCirugia;
	}
	public String getTiempoSalaRecuperacion() {
		return tiempoSalaRecuperacion;
	}
	public void setTiempoSalaRecuperacion(String tiempoSalaRecuperacion) {
		this.tiempoSalaRecuperacion = tiempoSalaRecuperacion;
	}	
	public Integer getResultadosPreoperatorios() {
		return resultadosPreoperatorios;
	}
	public void setResultadosPreoperatorios(Integer resultadosPreoperatorios) {
		this.resultadosPreoperatorios = resultadosPreoperatorios;
	}
	public String getDescribirResultadosPreoperatorios() {
		return describirResultadosPreoperatorios;
	}
	public void setDescribirResultadosPreoperatorios(String describirResultadosPreoperatorios) {
		this.describirResultadosPreoperatorios = describirResultadosPreoperatorios;
	}	
	public Integer getRiesgosQuirurgicosUno() {
		return riesgosQuirurgicosUno;
	}
	public void setRiesgosQuirurgicosUno(Integer riesgosQuirurgicosUno) {
		this.riesgosQuirurgicosUno = riesgosQuirurgicosUno;
	}
	public Integer getRiesgosQuirurgicosDos() {
		return riesgosQuirurgicosDos;
	}
	public void setRiesgosQuirurgicosDos(Integer riesgosQuirurgicosDos) {
		this.riesgosQuirurgicosDos = riesgosQuirurgicosDos;
	}
	public Integer getRiesgosQuirurgicosTres() {
		return riesgosQuirurgicosTres;
	}
	public void setRiesgosQuirurgicosTres(Integer riesgosQuirurgicosTres) {
		this.riesgosQuirurgicosTres = riesgosQuirurgicosTres;
	}
	public Integer getRiesgosQuirurgicosCuatro() {
		return riesgosQuirurgicosCuatro;
	}
	public void setRiesgosQuirurgicosCuatro(Integer riesgosQuirurgicosCuatro) {
		this.riesgosQuirurgicosCuatro = riesgosQuirurgicosCuatro;
	}
	public String getNombreAyudanteUno() {
		return nombreAyudanteUno;
	}
	public void setNombreAyudanteUno(String nombreAyudanteUno) {
		this.nombreAyudanteUno = nombreAyudanteUno;
	}
	public String getNombreAyudanteDos() {
		return nombreAyudanteDos;
	}
	public void setNombreAyudanteDos(String nombreAyudanteDos) {
		this.nombreAyudanteDos = nombreAyudanteDos;
	}
	public String getNombreAnestesiologo() {
		return nombreAnestesiologo;
	}
	public void setNombreAnestesiologo(String nombreAnestesiologo) {
		this.nombreAnestesiologo = nombreAnestesiologo;
	}	
	public String getNombreTitularSolicitudCirugiaProgramada() {
		return nombreTitularSolicitudCirugiaProgramada;
	}
	public void setNombreTitularSolicitudCirugiaProgramada(String nombreTitularSolicitudCirugiaProgramada) {
		this.nombreTitularSolicitudCirugiaProgramada = nombreTitularSolicitudCirugiaProgramada;
	}
	public String getApPTitularSolicitudCirugiaProgramada() {
		return apPTitularSolicitudCirugiaProgramada;
	}
	public void setApPTitularSolicitudCirugiaProgramada(String apPTitularSolicitudCirugiaProgramada) {
		this.apPTitularSolicitudCirugiaProgramada = apPTitularSolicitudCirugiaProgramada;
	}
	public String getApMTitularSolicitudCirugiaProgramada() {
		return apMTitularSolicitudCirugiaProgramada;
	}
	public void setApMTitularSolicitudCirugiaProgramada(String apMTitularSolicitudCirugiaProgramada) {
		this.apMTitularSolicitudCirugiaProgramada = apMTitularSolicitudCirugiaProgramada;
	}
	

	public Dictaminador getDictaminador() {
		return dictaminador;
	}
	public void setDictaminador(Dictaminador dictaminador) {
		this.dictaminador = dictaminador;
	}
	public Negociador getNegociador() {
		return negociador;
	}
	public void setNegociador(Negociador negociador) {
		this.negociador = negociador;
	}
	public Autorizador getAutorizador() {
		return autorizador;
	}
	public void setAutorizador(Autorizador autorizador) {
		this.autorizador = autorizador;
	}		
	public String getMotivoRechazo() {
		return motivoRechazo;
	}
	public void setMotivoRechazo(String motivoRechazo) {
		this.motivoRechazo = motivoRechazo;
	}
	
	public SolicitudCirugiaProgramada(){
		
	}

	public SolicitudCirugiaProgramada(Integer idSolicitudCirugiaProgramada,
			String nombreBeneficiarioSolicitudCirugiaProgramada, String apPBeneficiarioSolicitudCirugiaProgramada,
			String apMBeneficiarioSolicitudCirugiaProgramada, String nombreTitularSolicitudCirugiaProgramada,
			String apPTitularSolicitudCirugiaProgramada, String apMTitularSolicitudCirugiaProgramada,
			String edadBeneficiarioSolicitudCirugiaProgramada, String sexoBeneficiarioSolicitudCirugiaProgramada,
			String numNominaBeneficiarioSolicitudCirugiaProgramada, Date fechaSolicitudCirugiaProgramada,
			Date fechaSolicitudElaboracion, Integer tipoSolicitudCirugiaProgramada, Integer status,
			String tiempoCirugia, String tiempoSalaRecuperacion, Integer resultadosPreoperatorios,
			String describirResultadosPreoperatorios, String empresaBeneficiarioSolicitudCirugiaProgramada,
			MedicoTratante medicoTratante, Empresa empresa, Hospital hospital, Integer riesgosQuirurgicosUno,
			Integer riesgosQuirurgicosDos, Integer riesgosQuirurgicosTres, Integer riesgosQuirurgicosCuatro,
			String nombreAyudanteUno, String nombreAyudanteDos, String nombreAnestesiologo, String motivoRechazo,
			CirugiaSolicitada cirugiaSolicitadaUno, CirugiaSolicitada cirugiaSolicitadaDos, List<Insumo> insumos,
			Dictaminador dictaminador, Negociador negociador, Autorizador autorizador) {
		super();
		this.idSolicitudCirugiaProgramada = idSolicitudCirugiaProgramada;
		this.nombreBeneficiarioSolicitudCirugiaProgramada = nombreBeneficiarioSolicitudCirugiaProgramada;
		this.apPBeneficiarioSolicitudCirugiaProgramada = apPBeneficiarioSolicitudCirugiaProgramada;
		this.apMBeneficiarioSolicitudCirugiaProgramada = apMBeneficiarioSolicitudCirugiaProgramada;
		this.nombreTitularSolicitudCirugiaProgramada = nombreTitularSolicitudCirugiaProgramada;
		this.apPTitularSolicitudCirugiaProgramada = apPTitularSolicitudCirugiaProgramada;
		this.apMTitularSolicitudCirugiaProgramada = apMTitularSolicitudCirugiaProgramada;
		this.edadBeneficiarioSolicitudCirugiaProgramada = edadBeneficiarioSolicitudCirugiaProgramada;
		this.sexoBeneficiarioSolicitudCirugiaProgramada = sexoBeneficiarioSolicitudCirugiaProgramada;
		this.numNominaBeneficiarioSolicitudCirugiaProgramada = numNominaBeneficiarioSolicitudCirugiaProgramada;
		this.fechaSolicitudCirugiaProgramada = fechaSolicitudCirugiaProgramada;
		this.fechaSolicitudElaboracion = fechaSolicitudElaboracion;
		this.tipoSolicitudCirugiaProgramada = tipoSolicitudCirugiaProgramada;
		this.status = status;
		this.tiempoCirugia = tiempoCirugia;
		this.tiempoSalaRecuperacion = tiempoSalaRecuperacion;
		this.resultadosPreoperatorios = resultadosPreoperatorios;
		this.describirResultadosPreoperatorios = describirResultadosPreoperatorios;
		this.empresaBeneficiarioSolicitudCirugiaProgramada = empresaBeneficiarioSolicitudCirugiaProgramada;
		this.medicoTratante = medicoTratante;
		this.empresa = empresa;
		this.hospital = hospital;
		this.riesgosQuirurgicosUno = riesgosQuirurgicosUno;
		this.riesgosQuirurgicosDos = riesgosQuirurgicosDos;
		this.riesgosQuirurgicosTres = riesgosQuirurgicosTres;
		this.riesgosQuirurgicosCuatro = riesgosQuirurgicosCuatro;
		this.nombreAyudanteUno = nombreAyudanteUno;
		this.nombreAyudanteDos = nombreAyudanteDos;
		this.nombreAnestesiologo = nombreAnestesiologo;
		this.motivoRechazo = motivoRechazo;
		this.cirugiaSolicitadaUno = cirugiaSolicitadaUno;
		this.cirugiaSolicitadaDos = cirugiaSolicitadaDos;
		this.insumos = insumos;
		this.dictaminador = dictaminador;
		this.negociador = negociador;
		this.autorizador = autorizador;
	}
		
}
