package mx.argal.cp.servicios;

import mx.argal.cp.dao.UsuarioDao;
import mx.argal.cp.modelo.Usuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import mx.sep.sajja.datos.vo.FiltroBusquedaVO;


@Service
public class UsuarioServicioImpl implements UsuarioServicio {

	@Autowired
	private UsuarioDao usuarioDao;

	@Override
	public Usuario obtenerUsuario() {
		// TODO Auto-generated method stub
		return usuarioDao.obtenerUsuario();
	}
	
	}
