package mx.argal.cp.modelo;

import java.util.Date;

public class Negociador extends BaseModelo {
	
	private Integer idNegociador;
	private String nombreNegociador;
	private String appNegociador;
	private String apmNegociador;
	private Integer idTUsuario;
	
	public Integer getIdNegociador() {
		return idNegociador;
	}
	public void setIdNegociador(Integer idNegociador) {
		this.idNegociador = idNegociador;
	}
	public String getNombreNegociador() {
		return nombreNegociador;
	}
	public void setNombreNegociador(String nombreNegociador) {
		this.nombreNegociador = nombreNegociador;
	}
	public String getAppNegociador() {
		return appNegociador;
	}
	public void setAppNegociador(String appNegociador) {
		this.appNegociador = appNegociador;
	}
	public String getApmNegociador() {
		return apmNegociador;
	}
	public void setApmNegociador(String apmNegociador) {
		this.apmNegociador = apmNegociador;
	}
	public Integer getIdTUsuario() {
		return idTUsuario;
	}
	public void setIdTUsuario(Integer idTUsuario) {
		this.idTUsuario = idTUsuario;
	}
	
	public Negociador(){			
	}
	
	public Negociador(Integer idNegociador, String nombreNegociador, String appNegociador,
			String apmNegociador, Integer idTUsuario) {
		super();
		this.idNegociador = idNegociador;
		this.nombreNegociador = nombreNegociador;
		this.appNegociador = appNegociador;
		this.apmNegociador = apmNegociador;
		this.idTUsuario = idTUsuario;
	}
		
}
