package com.springmvcproject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvcproject.entity.Doctor;
import com.springmvcproject.entity.Patient;
import com.springmvcproject.entity.Register;
import com.springmvcproject.service.DoctorService;
import com.springmvcproject.service.PatientService;

@Controller
public class DoctorController {

	@Autowired
	private DoctorService service;
	
	@Autowired
	private PatientService patientservice;
	
	String message="";
	
	@RequestMapping("/")
	public String homePage()
	{
		return "homepage";
	}
	
	@RequestMapping("/loginpage")
	public String loginPage()
	{
		return "loginpage";
	}
	
	
	@RequestMapping("/loginform")
	public String loginform()
	{
		return "loginform";
	}
	
	@RequestMapping("/adminpage")  
	   public ModelAndView login(HttpServletRequest request,HttpServletResponse response) {
		  String userName=request.getParameter("email");  
	      String password=request.getParameter("password");
	      String id="admin";
	      String pwd="admin";
	      if(userName.equals(id) && password.equals(pwd))
	    	  return new ModelAndView("adminpage");
		  return new ModelAndView("errorpage");
	   }
	
	
	@RequestMapping("/index")
	public ModelAndView getView()
	{
		ModelAndView view=new ModelAndView("index");
		List<Doctor> doctorslist=service.listall();
		view.addObject("doctorslist",doctorslist);
		return view;
	}
	
	@RequestMapping("/doctorregisterform")
	public String newRegister(Map<String,Object> model)
	{
		model.put("doctor", new Doctor());
		return "doctorregisterform";
	}
	
	@RequestMapping("/new_doctor")
	public String newDoctor(Map<String,Object> model)
	{
		model.put("doctor", new Doctor());
		return "new_doctor";
	}
	
	@RequestMapping("/doctordashboard")
	public ModelAndView login(@RequestParam String email,@RequestParam String password)
	{
		Doctor doctor=service.findByEmail(email);
		message=doctor.getName();
		if(email.equalsIgnoreCase(doctor.getEmail()) && password.equals(doctor.getPassword()))
			return new ModelAndView("doctordashboard","message",message);
		
		return new ModelAndView("errorpage");
		
	}
	
	@RequestMapping("/viewappointment")
	public ModelAndView history()
	{
		ModelAndView view=new ModelAndView("viewappointment");
		List<Patient> patienthistory=patientservice.listall();
		List<Patient> viewappointment=new ArrayList<>();
		for (Patient patient : patienthistory) {
			if(patient.getDoctorName().equals(message))
				viewappointment.add(patient);
		}
		view.addObject("viewappointment",viewappointment);
		return view;
	}
	
	@RequestMapping("/doctorpatientlist")
	public ModelAndView patienthistory()
	{
		ModelAndView view=new ModelAndView("doctorpatientlist");
		List<Patient> patienthistory=patientservice.listall();
		List<Patient> viewappointment=new ArrayList<>();
		for (Patient patient : patienthistory) {
			if(patient.getDoctorName().equals(message))
				viewappointment.add(patient);
		}
		view.addObject("viewappointment",viewappointment);
		return view;
	}
	
	@RequestMapping("/doctorlogin")
	public ModelAndView loginView()
	{
		ModelAndView view=new ModelAndView("doctorlogin");
		return view;
	}
	
	@RequestMapping(value="/save" , method = RequestMethod.POST)
	public String saveDoctor(@ModelAttribute("doctor") Doctor doctor)
	{
		service.save(doctor);
		return "redirect:/";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editDoctor(@RequestParam long id)
	{
		ModelAndView view=new ModelAndView("edit_doctor");
		Doctor doctor=service.edit(id);
		view.addObject("doctor",doctor);
		return view;
	}
	
	@RequestMapping("/delete")
	public String deleteDoctor(@RequestParam long id)
	{
		service.delete(id);
		return "redirect:index/";
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword)
	{
		ModelAndView view=new ModelAndView("searchdoctor");
		List<Doctor> list=service.search(keyword);
		view.addObject("list",list);
		return view;
	}
}
