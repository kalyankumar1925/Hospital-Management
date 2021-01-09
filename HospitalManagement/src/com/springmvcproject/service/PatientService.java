package com.springmvcproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvcproject.entity.Doctor;
import com.springmvcproject.entity.Patient;

@Service
public class PatientService {

	@Autowired
	private PatientRepository patientrepo;
	
	public List<Patient> listall()
	{
		return (List<Patient>)patientrepo.findAll();
	}
	
	public void save(Patient patient)
	{
		patientrepo.save(patient);
	}
	
	public Patient edit(Long id)
	{
		Optional<Patient>res=patientrepo.findById(id);
		return res.get();
	}
	public void delete(Long id)
	{
		patientrepo.deleteById(id);
	}

	public List<Patient> searchappointment(String keyword)
	{
		return patientrepo.searchappointment(keyword);
	}
}
