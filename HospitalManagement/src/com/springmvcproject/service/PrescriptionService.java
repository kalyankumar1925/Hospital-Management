package com.springmvcproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvcproject.entity.Patient;
import com.springmvcproject.entity.Prescription;

@Service
public class PrescriptionService {

	@Autowired
	private PrescriptionRepository prescriptionrepo;
	
	public void save(Prescription prescription)
	{
		prescriptionrepo.save(prescription);
	}
	
	public List<Prescription> listall()
	{
		return (List<Prescription>)prescriptionrepo.findAll();
	}

	public Prescription edit(long id) {
		Optional<Prescription>res=prescriptionrepo.findById(id);
		return res.get();
	}
}
