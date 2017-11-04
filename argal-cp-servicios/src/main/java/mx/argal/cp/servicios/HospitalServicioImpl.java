package mx.argal.cp.servicios;

import mx.argal.cp.dao.HospitalDao;
import mx.argal.cp.modelo.Hospital;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HospitalServicioImpl implements HospitalServicio {

	@Autowired
	private HospitalDao hospitalDao;

	@Override
	public List<Hospital> obtenerHospitalesActivos() {
		// TODO Auto-generated method stub
		return this.hospitalDao.obtenerHospitalesActivos();
	}
	
}
