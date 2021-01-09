package com.springmvcproject.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.springmvcproject.entity.Doctor;
import com.springmvcproject.entity.Patient;

@Repository
public interface PatientRepository extends CrudRepository<Patient, Long> {

	@Query(value="SELECT p FROM Patient p WHERE p.doctorName LIKE '%' || :keyword || '%'"
			+"OR p.patientName LIKE '%' || :keyword || '%'"
			+ "OR p.contact LIKE '%' || :keyword || '%' ")
	public List<Patient> searchappointment(@Param("keyword") String keyword);
}
