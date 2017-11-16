package mx.argal.cp.modelo;

import java.util.Date;

public class Autorizador extends BaseModelo {
	
	private Integer idAutorizador;
	private String nombreAutorizador;
	private String appAutorizador;
	private String apmAutorizador;
	private Integer idTUsuario;
	
	public Integer getIdAutorizador() {
		return idAutorizador;
	}
	public void setIdAutorizador(Integer idAutorizador) {
		this.idAutorizador = idAutorizador;
	}
	public String getNombreAutorizador() {
		return nombreAutorizador;
	}
	public void setNombreAutorizador(String nombreAutorizador) {
		this.nombreAutorizador = nombreAutorizador;
	}
	public String getAppAutorizador() {
		return appAutorizador;
	}
	public void setAppAutorizador(String appAutorizador) {
		this.appAutorizador = appAutorizador;
	}
	public String getApmAutorizador() {
		return apmAutorizador;
	}
	public void setApmAutorizador(String apmAutorizador) {
		this.apmAutorizador = apmAutorizador;
	}
	public Integer getIdTUsuario() {
		return idTUsuario;
	}
	public void setIdTUsuario(Integer idTUsuario) {
		this.idTUsuario = idTUsuario;
	}
	
	public Autorizador(){			
	}
	
	public Autorizador(Integer idAutorizador, String nombreAutorizador, String appAutorizador,
			String apmAutorizador, Integer idTUsuario) {
		super();
		this.idAutorizador = idAutorizador;
		this.nombreAutorizador = nombreAutorizador;
		this.appAutorizador = appAutorizador;
		this.apmAutorizador = apmAutorizador;
		this.idTUsuario = idTUsuario;
	}
		
}
