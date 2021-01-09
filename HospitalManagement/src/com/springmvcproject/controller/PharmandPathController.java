package com.springmvcproject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvcproject.entity.Doctor;
import com.springmvcproject.entity.Labtests;
import com.springmvcproject.entity.Medicines;
import com.springmvcproject.entity.Prescription;
import com.springmvcproject.service.LabtestsService;
import com.springmvcproject.service.MedicinesService;
import com.springmvcproject.service.PrescriptionService;
@Controller

public class PharmandPathController {

	@Autowired
	MedicinesService medicinesservice;
	
	@Autowired
	private PrescriptionService prescriptionservice;
	
	@Autowired
	LabtestsService labtestsservice;
	
	@RequestMapping("/pathlogin")
	public String pathlogin()
	{
		return "pathlogin";
	}
	
	@RequestMapping("/viewprescribedmeds")
	public String viewmedicines()
	{
		return "viewprescribedmeds";
	}
	
	@RequestMapping("viewprescribedtests")
	public ModelAndView performLabtest()
	{
		List<Prescription> prescriptiontest=prescriptionservice.listall();
		List<Prescription> viewprescribedtests=new ArrayList<>();
		for (Prescription prescription : prescriptiontest) {
			if(!(prescription.getLabtest().equals("no")))
			{
				viewprescribedtests.add(prescription);
			}
		}
		return new ModelAndView("viewprescribedtests","viewprescribedtests",viewprescribedtests);
	}
	
	/*@RequestMapping("/viewprescribedtests")
	public String viewlabtests()
	{
		return "viewprescribedtests";
	}*/
	 
	@RequestMapping("/pharmlogin")
	public String pharmlogin()
	{
		return "pharmlogin";
	}
	
	@RequestMapping("/pathologistdashboard")  
	   public ModelAndView loginbyPath(HttpServletRequest request,HttpServletResponse response) {
		  String userName=request.getParameter("email");  
	      String password=request.getParameter("password");
	      String id="path";
	      String pwd="path";
	      if(userName.equals(id) && password.equals(pwd))
	    	  return new ModelAndView("pathologistdashboard");
		  return new ModelAndView("errorpage");
	   }
	@RequestMapping("/pharmacistdashboard")  
	   public ModelAndView loginbyPharm(HttpServletRequest request,HttpServletResponse response) {
		  String userName=request.getParameter("email");  
	      String password=request.getParameter("password");
	      String id="pharm";
	      String pwd="pharm";
	      if(userName.equals(id) && password.equals(pwd))
	    	  return new ModelAndView("pharmacistdashboard");
		  return new ModelAndView("errorpage");
	   }
	@RequestMapping("/viewmedicines")
	public ModelAndView getViewofmeds()
	{
		ModelAndView view=new ModelAndView("viewmedicines");
		List<Medicines> medicineslist=medicinesservice.listall();
		view.addObject("medicineslist",medicineslist);
		return view;
	}
	@RequestMapping("/viewlabtests")
	public ModelAndView getViewoflabtests()
	{
		ModelAndView view=new ModelAndView("viewlabtests");
		List<Labtests> labtestslist=labtestsservice.listall();
		view.addObject("labtestslist",labtestslist);
		return view;
	}
	@RequestMapping(value="/savemedicines" , method = RequestMethod.POST)
	public String savemedicines(@ModelAttribute("medicines") Medicines medicines)
	{
		medicinesservice.save(medicines);
		return "redirect:/";
	}
	@RequestMapping(value="/savelabtests" , method = RequestMethod.POST)
	public String savemedicines(@ModelAttribute("labtests") Labtests labtest)
	{
		labtestsservice.save(labtest);
		return "redirect:/";
	}
	@RequestMapping("/new_medicine")
	public String new_medicines(Map<String,Object> model)
	{
		model.put("medicines", new Medicines());
		return "new_medicine";
	}
	@RequestMapping("/editmedicine")
	public ModelAndView editDoctor(@RequestParam long mid)
	{
		ModelAndView view=new ModelAndView("edit_medicines");
		Medicines medicines=medicinesservice.edit(mid);
		view.addObject("medicines",medicines);
		return view;
	}
	
	@RequestMapping("/deletemedicine")
	public String deleteDoctor(@RequestParam long mid)
	{
		medicinesservice.delete(mid);
		return "redirect:viewmedicines/";
	}
	@RequestMapping("/new_labtest")
	public String new_labtest(Map<String,Object> model)
	{
		model.put("labtests", new Labtests());
		return "new_labtest";
	}
	@RequestMapping("/editlabtests")
	public ModelAndView editLabtests(@RequestParam long lid)
	{
		ModelAndView view=new ModelAndView("edit_labtests");
		Labtests labtests=labtestsservice.edit(lid);
		view.addObject("labtests",labtests);
		return view;
	}
	
	@RequestMapping("/deletelabtests")
	public String deleteLabtests(@RequestParam long lid)
	{
		labtestsservice.delete(lid);
		return "redirect:viewlabtests/";
	}
	
}
