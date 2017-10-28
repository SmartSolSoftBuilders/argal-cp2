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
	private Integer numCirugia;
	private List<Insumo> insumos;
	
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
	public List<Insumo> getInsumos() {
		return insumos;
	}
	public void setInsumos(List<Insumo> insumos) {
		this.insumos = insumos;
	}
	public CirugiaSolicitada(){
	}
	
	public CirugiaSolicitada(Integer idCirugiaSolicitada, Icd diagnosticoIngreso,
			ProcedimientoSolicitado procedimientoUno, ProcedimientoSolicitado procedimientoDos,
			ProcedimientoSolicitado procedimientoTres, String fundamentosDiagnostico, Icd otrasEnfUno,
			Integer numCirugia,List<Insumo> insumos) {
		super();
		this.idCirugiaSolicitada = idCirugiaSolicitada;
		this.diagnosticoIngreso = diagnosticoIngreso;
		this.procedimientoUno = procedimientoUno;
		this.procedimientoDos = procedimientoDos;
		this.procedimientoTres = procedimientoTres;
		this.fundamentosDiagnostico = fundamentosDiagnostico;
		this.otrasEnfUno = otrasEnfUno;
		this.numCirugia = numCirugia;
		this.insumos = insumos;
	}
	
}