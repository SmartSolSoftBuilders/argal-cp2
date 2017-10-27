package mx.argal.cp.modelo;

import java.util.Date;

public class ProcedimientoSolicitado extends BaseModelo {
	
	private Integer idProcedimientoSolicitado;
	private Cpt cpt;
	private Boolean autorizado;
	private	Double honorariosMedicosDictaminados;
	private	Double honorariosMedicosNegociados;
	private	Double honorariosMedicosAutorizados;
	private Double honorariosAyudanteUnoDictaminados;
	private Double honorariosAyudanteUnoNegociados;
	private Double honorariosAyudanteUnoAutorizados;
	private Double honorariosAyudanteDosDictaminados;
	private Double honorariosAyudanteDosNegociados;
	private Double honorariosAyudanteDosAutorizados;
	private Double honorariosAnestesiologoDictaminados;
	private Double honorariosAnestesiologoNegociados;
	private Double honorariosAnestesiologoAutorizados;
	private Integer numProcedimiento;
	
	public Integer getIdProcedimientoSolicitado() {
		return idProcedimientoSolicitado;
	}
	public void setIdProcedimientoSolicitado(Integer idProcedimientoSolicitado) {
		this.idProcedimientoSolicitado = idProcedimientoSolicitado;
	}
	public Cpt getCpt() {
		return cpt;
	}
	public void setCpt(Cpt cpt) {
		this.cpt = cpt;
	}
	public Boolean getAutorizado() {
		return autorizado;
	}
	public void setAutorizado(Boolean autorizado) {
		this.autorizado = autorizado;
	}
	public Double getHonorariosMedicosDictaminados() {
		return honorariosMedicosDictaminados;
	}
	public void setHonorariosMedicosDictaminados(Double honorariosMedicosDictaminados) {
		this.honorariosMedicosDictaminados = honorariosMedicosDictaminados;
	}
	public Double getHonorariosMedicosNegociados() {
		return honorariosMedicosNegociados;
	}
	public void setHonorariosMedicosNegociados(Double honorariosMedicosNegociados) {
		this.honorariosMedicosNegociados = honorariosMedicosNegociados;
	}
	public Double getHonorariosMedicosAutorizados() {
		return honorariosMedicosAutorizados;
	}
	public void setHonorariosMedicosAutorizados(Double honorariosMedicosAutorizados) {
		this.honorariosMedicosAutorizados = honorariosMedicosAutorizados;
	}
	public Double getHonorariosAyudanteUnoDictaminados() {
		return honorariosAyudanteUnoDictaminados;
	}
	public void setHonorariosAyudanteUnoDictaminados(Double honorariosAyudanteUnoDictaminados) {
		this.honorariosAyudanteUnoDictaminados = honorariosAyudanteUnoDictaminados;
	}
	public Double getHonorariosAyudanteUnoNegociados() {
		return honorariosAyudanteUnoNegociados;
	}
	public void setHonorariosAyudanteUnoNegociados(Double honorariosAyudanteUnoNegociados) {
		this.honorariosAyudanteUnoNegociados = honorariosAyudanteUnoNegociados;
	}
	public Double getHonorariosAyudanteUnoAutorizados() {
		return honorariosAyudanteUnoAutorizados;
	}
	public void setHonorariosAyudanteUnoAutorizados(Double honorariosAyudanteUnoAutorizados) {
		this.honorariosAyudanteUnoAutorizados = honorariosAyudanteUnoAutorizados;
	}
	public Double getHonorariosAyudanteDosDictaminados() {
		return honorariosAyudanteDosDictaminados;
	}
	public void setHonorariosAyudanteDosDictaminados(Double honorariosAyudanteDosDictaminados) {
		this.honorariosAyudanteDosDictaminados = honorariosAyudanteDosDictaminados;
	}
	public Double getHonorariosAyudanteDosNegociados() {
		return honorariosAyudanteDosNegociados;
	}
	public void setHonorariosAyudanteDosNegociados(Double honorariosAyudanteDosNegociados) {
		this.honorariosAyudanteDosNegociados = honorariosAyudanteDosNegociados;
	}
	public Double getHonorariosAyudanteDosAutorizados() {
		return honorariosAyudanteDosAutorizados;
	}
	public void setHonorariosAyudanteDosAutorizados(Double honorariosAyudanteDosAutorizados) {
		this.honorariosAyudanteDosAutorizados = honorariosAyudanteDosAutorizados;
	}
	public Double getHonorariosAnestesiologoDictaminados() {
		return honorariosAnestesiologoDictaminados;
	}
	public void setHonorariosAnestesiologoDictaminados(Double honorariosAnestesiologoDictaminados) {
		this.honorariosAnestesiologoDictaminados = honorariosAnestesiologoDictaminados;
	}
	public Double getHonorariosAnestesiologoNegociados() {
		return honorariosAnestesiologoNegociados;
	}
	public void setHonorariosAnestesiologoNegociados(Double honorariosAnestesiologoNegociados) {
		this.honorariosAnestesiologoNegociados = honorariosAnestesiologoNegociados;
	}
	public Double getHonorariosAnestesiologoAutorizados() {
		return honorariosAnestesiologoAutorizados;
	}
	public void setHonorariosAnestesiologoAutorizados(Double honorariosAnestesiologoAutorizados) {
		this.honorariosAnestesiologoAutorizados = honorariosAnestesiologoAutorizados;
	}		
	public Integer getNumProcedimiento() {
		return numProcedimiento;
	}
	public void setNumProcedimiento(Integer numProcedimiento) {
		this.numProcedimiento = numProcedimiento;
	}
	public ProcedimientoSolicitado(){
	}
	
	public ProcedimientoSolicitado(Integer idProcedimientoSolicitado, Cpt cpt, Boolean autorizado,
			Double honorariosMedicosDictaminados, Double honorariosMedicosNegociados,
			Double honorariosMedicosAutorizados, Double honorariosAyudanteUnoDictaminados,
			Double honorariosAyudanteUnoNegociados, Double honorariosAyudanteUnoAutorizados,
			Double honorariosAyudanteDosDictaminados, Double honorariosAyudanteDosNegociados,
			Double honorariosAyudanteDosAutorizados, Double honorariosAnestesiologoDictaminados,
			Double honorariosAnestesiologoNegociados, Double honorariosAnestesiologoAutorizados, Integer numProcedimiento) {
		super();
		this.idProcedimientoSolicitado = idProcedimientoSolicitado;
		this.cpt = cpt;
		this.autorizado = autorizado;
		this.honorariosMedicosDictaminados = honorariosMedicosDictaminados;
		this.honorariosMedicosNegociados = honorariosMedicosNegociados;
		this.honorariosMedicosAutorizados = honorariosMedicosAutorizados;
		this.honorariosAyudanteUnoDictaminados = honorariosAyudanteUnoDictaminados;
		this.honorariosAyudanteUnoNegociados = honorariosAyudanteUnoNegociados;
		this.honorariosAyudanteUnoAutorizados = honorariosAyudanteUnoAutorizados;
		this.honorariosAyudanteDosDictaminados = honorariosAyudanteDosDictaminados;
		this.honorariosAyudanteDosNegociados = honorariosAyudanteDosNegociados;
		this.honorariosAyudanteDosAutorizados = honorariosAyudanteDosAutorizados;
		this.honorariosAnestesiologoDictaminados = honorariosAnestesiologoDictaminados;
		this.honorariosAnestesiologoNegociados = honorariosAnestesiologoNegociados;
		this.honorariosAnestesiologoAutorizados = honorariosAnestesiologoAutorizados;
		this.numProcedimiento = numProcedimiento;
	}			
	
}
