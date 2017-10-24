package mx.argal.cp.dao;

import java.util.List;
import mx.argal.cp.modelo.Empresa;

public interface EmpresaDao {
	
	public List<Empresa> obtenerEmpresasActivas();

}
