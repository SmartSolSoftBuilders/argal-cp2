package mx.argal.cp.modelo;

import java.util.Date;
import java.util.List;

public class CirugiaSolicitada extends BaseModelo {
	
	private Integer idCirugiaSolicitada;
	private Icd diagnosticoIngreso;
	private ProcedimientoSolicitado procedimientoUno;
	private ProcedimientoSolicitado procedimientoDos;
	private ProcedimientoSolicitado procedimientoTres;
	private String fundamentosDiagnostico;
	private Icd otrasEnfUno;
	private Icd otrasEnfDos;
	private Icd otrasEnfTres;
	private Icd otrasEnfCuatro;
	private Icd otrasEnfCinco;	
	private Integer numCirugia;
	private Double montoDictaminado;
	private Double montoNegociado;
	private Double montoAutorizado;
	
	public Integer getIdCirugiaSolicitada() {
		return idCirugiaSolicitada;
	}
	public void setIdCirugiaSolicitada(Integer idCirugiaSolicitada) {
		this.idCirugiaSolicitada = idCirugiaSolicitada;
	}
	public Icd getDiagnosticoIngreso() {
		return diagnosticoIngreso;
	}
	public void setDiagnosticoIngreso(Icd diagnosticoIngreso) {
		this.diagnosticoIngreso = diagnosticoIngreso;
	}
	public ProcedimientoSolicitado getProcedimientoUno() {
		return procedimientoUno;
	}
	public void setProcedimientoUno(ProcedimientoSolicitado procedimientoUno) {
		this.procedimientoUno = procedimientoUno;
	}
	public ProcedimientoSolicitado getProcedimientoDos() {
		return procedimientoDos;
	}
	public void setProcedimientoDos(ProcedimientoSolicitado procedimientoDos) {
		this.procedimientoDos = procedimientoDos;
	}
	public ProcedimientoSolicitado getProcedimientoTres() {
		return procedimientoTres;
	}
	public void setProcedimientoTres(ProcedimientoSolicitado procedimientoTres) {
		this.procedimientoTres = procedimientoTres;
	}
	public String getFundamentosDiagnostico() {
		return fundamentosDiagnostico;
	}
	public void setFundamentosDiagnostico(String fundamentosDiagnostico) {
		this.fundamentosDiagnostico = fundamentosDiagnostico;
	}
	public Icd getOtrasEnfUno() {
		return otrasEnfUno;
	}
	public void setOtrasEnfUno(Icd otrasEnfUno) {
		this.otrasEnfUno = otrasEnfUno;
	}
	public Integer getNumCirugia() {
		return numCirugia;
	}
	public void setNumCirugia(Integer numCirugia) {
		this.numCirugia = numCirugia;
	}	
	public Icd getOtrasEnfDos() {
		return otrasEnfDos;
	}
	public void setOtrasEnfDos(Icd otrasEnfDos) {
		this.otrasEnfDos = otrasEnfDos;
	}
	public Icd getOtrasEnfTres() {
		return otrasEnfTres;
	}
	public void setOtrasEnfTres(Icd otrasEnfTres) {
		this.otrasEnfTres = otrasEnfTres;
	}
	public Icd getOtrasEnfCuatro() {
		return otrasEnfCuatro;
	}
	public void setOtrasEnfCuatro(Icd otrasEnfCuatro) {
		this.otrasEnfCuatro = otrasEnfCuatro;
	}
	public Icd getOtrasEnfCinco() {
		return otrasEnfCinco;
	}
	public void setOtrasEnfCinco(Icd otrasEnfCinco) {
		this.otrasEnfCinco = otrasEnfCinco;
	}
	public Double getMontoDictaminado() {
		return montoDictaminado;
	}
	public void setMontoDictaminado(Double montoDictaminado) {
		this.montoDictaminado = montoDictaminado;
	}
	public Double getMontoNegociado() {
		return montoNegociado;
	}
	public void setMontoNegociado(Double montoNegociado) {
		this.montoNegociado = montoNegociado;
	}
	public Double getMontoAutorizado() {
		return montoAutorizado;
	}
	public void setMontoAutorizado(Double montoAutorizado) {
		this.montoAutorizado = montoAutorizado;
	}
	
	public CirugiaSolicitada(){		
	}	
	public CirugiaSolicitada(Integer idCirugiaSolicitada, Icd diagnosticoIngreso,
			ProcedimientoSolicitado procedimientoUno, ProcedimientoSolicitado procedimientoDos,
			ProcedimientoSolicitado procedimientoTres, String fundamentosDiagnostico, Icd otrasEnfUno, Icd otrasEnfDos,
			Icd otrasEnfTres, Icd otrasEnfCuatro, Icd otrasEnfCinco, Integer numCirugia, Double montoDictaminado,
			Double montoNegociado, Double montoAutorizado) {
		super();
		this.idCirugiaSolicitada = idCirugiaSolicitada;
		this.diagnosticoIngreso = diagnosticoIngreso;
		this.procedimientoUno = procedimientoUno;
		this.procedimientoDos = procedimientoDos;
		this.procedimientoTres = procedimientoTres;
		this.fundamentosDiagnostico = fundamentosDiagnostico;
		this.otrasEnfUno = otrasEnfUno;
		this.otrasEnfDos = otrasEnfDos;
		this.otrasEnfTres = otrasEnfTres;
		this.otrasEnfCuatro = otrasEnfCuatro;
		this.otrasEnfCinco = otrasEnfCinco;
		this.numCirugia = numCirugia;
		this.montoDictaminado = montoDictaminado;
		this.montoNegociado = montoNegociado;
		this.montoAutorizado = montoAutorizado;
	}
		
}