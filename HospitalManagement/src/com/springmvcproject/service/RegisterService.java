package com.springmvcproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvcproject.entity.Register;

@Service
public class RegisterService {

	@Autowired
	private RegisterRepository registerrepo;

	public void save(Register register) {
		registerrepo.save(register);
		
	}
	
	public Register findByEmail(String email)
	{
		return registerrepo.findByEmail(email);
	}
}
