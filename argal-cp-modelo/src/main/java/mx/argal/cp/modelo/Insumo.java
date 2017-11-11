package mx.argal.cp.modelo;

import java.util.Date;

public class Insumo extends BaseModelo {
	
	private Integer idInsumo;
	private String descripcion;
	private Double monto;
	private Boolean autorizado;
	
	public Integer getIdInsumo() {
		return idInsumo;
	}
	public void setIdInsumo(Integer idInsumo) {
		this.idInsumo = idInsumo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Double getMonto() {
		return monto;
	}
	public void setMonto(Double monto) {
		this.monto = monto;
	}		
	public Boolean getAutorizado() {
		return autorizado;
	}
	public void setAutorizado(Boolean autorizado) {
		this.autorizado = autorizado;
	}
	public Insumo(){		
	}

	public Insumo(Integer idInsumo, String descripcion, Double monto, Boolean autorizado) {
		super();
		this.idInsumo = idInsumo;
		this.descripcion = descripcion;
		this.monto = monto;
		this.autorizado = autorizado;
	}
	
}
