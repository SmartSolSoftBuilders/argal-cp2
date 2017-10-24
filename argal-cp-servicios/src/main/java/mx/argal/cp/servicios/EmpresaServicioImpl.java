package mx.argal.cp.servicios;

import mx.argal.cp.dao.EmpresaDao;
import mx.argal.cp.modelo.Empresa;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import mx.sep.sajja.datos.vo.FiltroBusquedaVO;


@Service
public class EmpresaServicioImpl implements EmpresaServicio {

	@Autowired
	private EmpresaDao empresaDao;

	@Override
	public List<Empresa> obtenerEmpresasActivas() {
		// TODO Auto-generated method stub
		return this.empresaDao.obtenerEmpresasActivas();
	}
	
}
