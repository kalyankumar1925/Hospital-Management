package com.springmvcproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvcproject.entity.Doctor;

@Service
public class DoctorService {

	@Autowired
	private DoctorRepository repo;
	
	public List<Doctor> listall()
	{
		return (List<Doctor>)repo.findAll();
	}
	
	public void save(Doctor doctor)
	{
		repo.save(doctor);
	}
	
	public Doctor edit(Long id)
	{
		Optional<Doctor>res=repo.findById(id);
		return res.get();
	}
	public void delete(Long id)
	{
		repo.deleteById(id);
	}
	
	public List<Doctor> search(String keyword)
	{
		return repo.search(keyword);
	}

	public Doctor findByEmail(String email) {
		return repo.findByEmail(email);
	}
}
