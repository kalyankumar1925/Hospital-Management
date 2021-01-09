package com.springmvcproject.service;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springmvcproject.entity.Register;

@Repository
public interface RegisterRepository extends CrudRepository<Register, Long> {

	
	Register findByEmail(String email);
}
