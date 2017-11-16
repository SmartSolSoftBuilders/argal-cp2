package mx.argal.cp.modelo;

import java.util.Date;

public class MedicoTratante extends BaseModelo {
	
	private Integer idMedicoTratante;
	private String nombreMedicoTratante;
	private String appMedicoTratante;
	private String apmMedicoTratante;
	private Integer idTUsuario;
	
	public Integer getIdMedicoTratante() {
		return idMedicoTratante;
	}
	public void setIdMedicoTratante(Integer idMedicoTratante) {
		this.idMedicoTratante = idMedicoTratante;
	}
	public String getNombreMedicoTratante() {
		return nombreMedicoTratante;
	}
	public void setNombreMedicoTratante(String nombreMedicoTratante) {
		this.nombreMedicoTratante = nombreMedicoTratante;
	}
	public String getAppMedicoTratante() {
		return appMedicoTratante;
	}
	public void setAppMedicoTratante(String appMedicoTratante) {
		this.appMedicoTratante = appMedicoTratante;
	}
	public String getApmMedicoTratante() {
		return apmMedicoTratante;
	}
	public void setApmMedicoTratante(String apmMedicoTratante) {
		this.apmMedicoTratante = apmMedicoTratante;
	}
	public Integer getIdTUsuario() {
		return idTUsuario;
	}
	public void setIdTUsuario(Integer idTUsuario) {
		this.idTUsuario = idTUsuario;
	}
	
	public MedicoTratante(){			
	}
	
	public MedicoTratante(Integer idMedicoTratante, String nombreMedicoTratante, String appMedicoTratante,
			String apmMedicoTratante, Integer idTUsuario) {
		super();
		this.idMedicoTratante = idMedicoTratante;
		this.nombreMedicoTratante = nombreMedicoTratante;
		this.appMedicoTratante = appMedicoTratante;
		this.apmMedicoTratante = apmMedicoTratante;
		this.idTUsuario = idTUsuario;
	}
		
}
