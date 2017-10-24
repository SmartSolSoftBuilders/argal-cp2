package mx.argal.cp.modelo;

import java.util.Date;

public class CirugiaSolicitada extends BaseModelo {
	
	private Integer idCirugiaSolicitada;
	private Icd diagnosticoIngreso;
	private Cpt procedimiento1;
	private Cpt procedimiento2;
	private Cpt procedimiento3;
	private String fundamentosDiagnostico;
	private Icd otrasEnf1;
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

	public Cpt getProcedimiento1() {
		return procedimiento1;
	}

	public void setProcedimiento1(Cpt procedimiento1) {
		this.procedimiento1 = procedimiento1;
	}

	public Cpt getProcedimiento2() {
		return procedimiento2;
	}

	public void setProcedimiento2(Cpt procedimiento2) {
		this.procedimiento2 = procedimiento2;
	}

	public Cpt getProcedimiento3() {
		return procedimiento3;
	}

	public void setProcedimiento3(Cpt procedimiento3) {
		this.procedimiento3 = procedimiento3;
	}

	public String getFundamentosDiagnostico() {
		return fundamentosDiagnostico;
	}

	public void setFundamentosDiagnostico(String fundamentosDiagnostico) {
		this.fundamentosDiagnostico = fundamentosDiagnostico;
	}

	public Icd getOtrasEnf1() {
		return otrasEnf1;
	}

	public void setOtrasEnf1(Icd otrasEnf1) {
		this.otrasEnf1 = otrasEnf1;
	}

	public Integer getNumCirugia() {
		return numCirugia;
	}

	public void setNumCirugia(Integer numCirugia) {
		this.numCirugia = numCirugia;
	}

	public CirugiaSolicitada(){
		
	}

	public CirugiaSolicitada(Integer idCirugiaSolicitada, Icd diagnosticoIngreso, Cpt procedimiento1,
			Cpt procedimiento2, Cpt procedimiento3, String fundamentosDiagnostico, Icd otrasEnf1, Integer numCirugia) {
		super();
		this.idCirugiaSolicitada = idCirugiaSolicitada;
		this.diagnosticoIngreso = diagnosticoIngreso;
		this.procedimiento1 = procedimiento1;
		this.procedimiento2 = procedimiento2;
		this.procedimiento3 = procedimiento3;
		this.fundamentosDiagnostico = fundamentosDiagnostico;
		this.otrasEnf1 = otrasEnf1;
		this.numCirugia = numCirugia;
	}
		
}