package mx.argal.cp.servicios;

import mx.argal.cp.dao.MedicoTratanteDao;
import mx.argal.cp.dao.UsuarioDao;
import mx.argal.cp.modelo.MedicoTratante;
import mx.argal.cp.modelo.Usuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import mx.sep.sajja.datos.vo.FiltroBusquedaVO;


@Service
public class MedicoTratanteServicioImpl implements MedicoTratanteServicio {

	@Autowired
	private MedicoTratanteDao medicoTratanteDao;

	@Override
	public MedicoTratante obtenerMedicoTratanteByIdTUs(MedicoTratante medicoTratante) {
		// TODO Auto-generated method stub
		return this.medicoTratanteDao.obtenerMedicoTratanteByIdTUs(medicoTratante);
	}

	
}
