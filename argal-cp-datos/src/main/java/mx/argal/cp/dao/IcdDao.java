package mx.argal.cp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mx.argal.cp.modelo.Icd;

@Repository
public interface IcdDao {
	
	public List<Icd> obtenerIcds();
	
}
