package mx.argal.cp.servicios;

import mx.argal.cp.dao.CptDao;
import mx.argal.cp.dao.IcdDao;
import mx.argal.cp.modelo.Cpt;
import mx.argal.cp.modelo.Icd;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CptServicioImpl implements CptServicio {

	@Autowired
	private CptDao cptDao;

	@Override
	public List obtenerCpts() {
		// TODO Auto-generated method stub
		List returnIcdsList = new ArrayList();
		List<Cpt> icds = this.cptDao.obtenerCpts();
		List icd = new ArrayList();
		for (int i=0; i<icds.size();i++){
			icd = new ArrayList();
			icd.add(icds.get(i).getIdCpt());
			icd.add(icds.get(i).getDescripcion());
			icd.add(icds.get(i).getCveCpt());
			icd.add("<a href='#' onclick='selectCpt("+icds.get(i).getIdCpt()+",\""+icds.get(i).getDescripcion().replace(" ",".")+"\")'>Seleccionar</a>");
			returnIcdsList.add(icd);
		}
		return returnIcdsList; 
	}	
	
}
