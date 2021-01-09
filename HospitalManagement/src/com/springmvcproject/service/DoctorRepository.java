package com.springmvcproject.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvcproject.entity.Doctor;


public interface DoctorRepository extends CrudRepository<Doctor, Long> {
	
	@Query(value="SELECT d FROM Doctor d WHERE d.name LIKE '%' || :keyword || '%'"
			+"OR d.email LIKE '%' || :keyword || '%'"
			+ "OR d.specialist LIKE '%' || :keyword || '%' ")
	public List<Doctor> search(@Param("keyword") String keyword);	

	Doctor findByEmail(String email);
}
