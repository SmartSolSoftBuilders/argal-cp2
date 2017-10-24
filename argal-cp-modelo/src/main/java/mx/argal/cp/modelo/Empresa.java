package mx.argal.cp.modelo;

import java.util.Date;

public class Empresa extends BaseModelo {
	
	private Integer idEmpresa;
	private String nombreEmpresa;
	private String nombreCorto;
	private Boolean activa;
	
	public Integer getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(Integer idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public String getNombreEmpresa() {
		return nombreEmpresa;
	}
	public void setNombreEmpresa(String nombreEmpresa) {
		this.nombreEmpresa = nombreEmpresa;
	}
	public String getNombreCorto() {
		return nombreCorto;
	}
	public void setNombreCorto(String nombreCorto) {
		this.nombreCorto = nombreCorto;
	}
		
	public Boolean getActiva() {
		return activa;
	}
	
	public void setActiva(Boolean activa) {
		this.activa = activa;
	}
	
	public Empresa() {
		
	}
	
	public Empresa(Integer idEmpresa, String nombreEmpresa, String nombreCorto, Boolean activa) {
		super();
		this.idEmpresa = idEmpresa;
		this.nombreEmpresa = nombreEmpresa;
		this.nombreCorto = nombreCorto;
		this.activa= activa;
	}
		
}
