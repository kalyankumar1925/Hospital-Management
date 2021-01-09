package com.springmvcproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvcproject.entity.Doctor;
import com.springmvcproject.entity.Medicines;

@Service
public class MedicinesService {
	@Autowired
	private MedicinesRepository repo;
	
	public List<Medicines> listall()
	{
		return (List<Medicines>)repo.findAll();
	}
	public Medicines edit(Long mid)
	{
		Optional<Medicines>res=repo.findById(mid);
		return res.get();
	}
	public void delete(Long mid)
	{
		repo.deleteById(mid);
	}
	public void save(Medicines medicines)
	{
		repo.save(medicines);
	}
	
}
