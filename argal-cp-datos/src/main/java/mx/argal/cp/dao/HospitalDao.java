package mx.argal.cp.dao;

import java.util.List;
import mx.argal.cp.modelo.Hospital;

public interface HospitalDao {
	
	public List<Hospital> obtenerHospitalesActivos();

}
