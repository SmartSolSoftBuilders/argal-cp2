package mx.argal.cp.servicios;

import mx.argal.cp.dao.IcdDao;
import mx.argal.cp.modelo.Icd;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import mx.sep.sajja.datos.vo.FiltroBusquedaVO;


@Service
public class IcdServicioImpl implements IcdServicio {

	@Autowired
	private IcdDao icdDao;

	@Override
	public List obtenerIcds() {
		// TODO Auto-generated method stub
		List returnIcdsList = new ArrayList();
		List<Icd> icds = this.icdDao.obtenerIcds();
		List icd = new ArrayList();
		for (int i=0; i<icds.size();i++){
			icd = new ArrayList();
			icd.add(icds.get(i).getIdIcd());
			icd.add(icds.get(i).getDescripcion());
			icd.add(icds.get(i).getClave());
			icd.add("<a href='#' onclick='selectIcd()'>Seleccionar</a>");
			returnIcdsList.add(icd);
		}
		return returnIcdsList; 
	}	
	
}
