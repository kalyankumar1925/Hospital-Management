package com.springmvcproject.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvcproject.entity.Doctor;
import com.springmvcproject.entity.Register;
import com.springmvcproject.service.RegisterRepository;
import com.springmvcproject.service.RegisterService;

@Controller
public class RegisterController {

	@Autowired
	private RegisterService service;
	
	@RequestMapping("/services")
	public String service()
	{
		return "services";
	}
	@RequestMapping("/register")
	public ModelAndView getView()
	{
		ModelAndView view=new ModelAndView("register");
		return view;
	}
	
	@RequestMapping("/patientregisterform")
	public String newRegister(Map<String,Object> model)
	{
		model.put("register", new Register());
		return "patientregisterform";
	}
	
	@RequestMapping(value="/registeruser" , method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("register") Register register)
	{
		service.save(register);
		return "register";
	}
}
