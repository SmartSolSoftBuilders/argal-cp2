package mx.argal.cp.servicios;

import mx.argal.cp.dao.IcdDao;
import mx.argal.cp.modelo.Icd;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import mx.sep.sajja.datos.vo.FiltroBusquedaVO;


@Service
public class IcdServicioImpl implements IcdServicio {

	@Autowired
	private IcdDao icdDao;

	@Override
	public List<Icd> obtenerIcds() {
		// TODO Auto-generated method stub
		return this.icdDao.obtenerIcds();
	}	
	
}
