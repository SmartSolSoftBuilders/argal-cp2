package test.argal.servicios;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import mx.argal.cp.servicios.UsuarioServicio;

public class UsuarioServicioImplTest extends BaseServicioTest {
	
	@Autowired
	private UsuarioServicio usuarioServicio;

	@Test
	public void usuarioServicioDependenciaTest(){
		//Assert.notNull(usuarioServicio);
	}
}
