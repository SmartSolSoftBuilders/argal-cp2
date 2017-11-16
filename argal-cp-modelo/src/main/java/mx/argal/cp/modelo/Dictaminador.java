package mx.argal.cp.modelo;

import java.util.Date;

public class Dictaminador extends BaseModelo {
	
	private Integer idDictaminador;
	private String nombreDictaminador;
	private String appDictaminador;
	private String apmDictaminador;
	private Integer idTUsuario;
	
	public Integer getIdDictaminador() {
		return idDictaminador;
	}
	public void setIdDictaminador(Integer idDictaminador) {
		this.idDictaminador = idDictaminador;
	}
	public String getNombreDictaminador() {
		return nombreDictaminador;
	}
	public void setNombreDictaminador(String nombreDictaminador) {
		this.nombreDictaminador = nombreDictaminador;
	}
	public String getAppDictaminador() {
		return appDictaminador;
	}
	public void setAppDictaminador(String appDictaminador) {
		this.appDictaminador = appDictaminador;
	}
	public String getApmDictaminador() {
		return apmDictaminador;
	}
	public void setApmDictaminador(String apmDictaminador) {
		this.apmDictaminador = apmDictaminador;
	}
	public Integer getIdTUsuario() {
		return idTUsuario;
	}
	public void setIdTUsuario(Integer idTUsuario) {
		this.idTUsuario = idTUsuario;
	}
	
	public Dictaminador(){			
	}
	
	public Dictaminador(Integer idDictaminador, String nombreDictaminador, String appDictaminador,
			String apmDictaminador, Integer idTUsuario) {
		super();
		this.idDictaminador = idDictaminador;
		this.nombreDictaminador = nombreDictaminador;
		this.appDictaminador = appDictaminador;
		this.apmDictaminador = apmDictaminador;
		this.idTUsuario = idTUsuario;
	}
		
}
