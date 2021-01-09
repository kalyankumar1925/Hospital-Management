package com.springmvcproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvcproject.entity.Doctor;
import com.springmvcproject.entity.Labtests;
import com.springmvcproject.entity.Medicines;

@Service
public class LabtestsService {

	@Autowired
	private LabtestsRepository repo;
	
	public List<Labtests> listall()
	{
		return (List<Labtests>)repo.findAll();
	}
	public Labtests edit(Long id)
	{
		Optional<Labtests>res=repo.findById(id);
		return res.get();
	}
	public void delete(Long id)
	{
		repo.deleteById(id);
	}
	public void save(Labtests medicines)
	{
		repo.save(medicines);
	}
	
}
