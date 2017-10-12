package mx.argal.cp.servicios;

import mx.argal.cp.dao.CptDao;
import mx.argal.cp.modelo.Cpt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import mx.sep.sajja.datos.vo.FiltroBusquedaVO;


@Service
public class CptServicioImpl implements CptServicio {

	@Autowired
	private CptDao cptDao;

	@Override
	public List<Cpt> obtenerCpts() {
		// TODO Auto-generated method stub
		return this.cptDao.obtenerCpts();
	}	
	
}
