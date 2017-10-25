package mx.argal.cp.modelo;

import java.util.Date;

public class CirugiaSolicitada extends BaseModelo {
	
	private Integer idCirugiaSolicitada;
	private Icd diagnosticoIngreso;
	private Cpt procedimientoUno;
	private Cpt procedimientoDos;
	private Cpt procedimientoTres;
	private String fundamentosDiagnostico;
	private Icd otrasEnfUno;
	private Integer numCirugia;
	
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

	public Cpt getProcedimientoUno() {
		return procedimientoUno;
	}

	public void setProcedimientoUno(Cpt procedimientoUno) {
		this.procedimientoUno = procedimientoUno;
	}

	public Cpt getProcedimientoDos() {
		return procedimientoDos;
	}

	public void setProcedimientoDos(Cpt procedimientoDos) {
		this.procedimientoDos = procedimientoDos;
	}

	public Cpt getProcedimientoTres() {
		return procedimientoTres;
	}

	public void setProcedimientoTres(Cpt procedimientoTres) {
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

	public CirugiaSolicitada(){
		
	}

	public CirugiaSolicitada(Integer idCirugiaSolicitada, Icd diagnosticoIngreso, Cpt procedimientoUno,
			Cpt procedimientoDos, Cpt procedimientoTres, String fundamentosDiagnostico, Icd otrasEnfUno, Integer numCirugia) {
		super();
		this.idCirugiaSolicitada = idCirugiaSolicitada;
		this.diagnosticoIngreso = diagnosticoIngreso;
		this.procedimientoUno = procedimientoUno;
		this.procedimientoDos = procedimientoDos;
		this.procedimientoTres = procedimientoTres;
		this.fundamentosDiagnostico = fundamentosDiagnostico;
		this.otrasEnfUno = otrasEnfUno;
		this.numCirugia = numCirugia;
	}
		
}