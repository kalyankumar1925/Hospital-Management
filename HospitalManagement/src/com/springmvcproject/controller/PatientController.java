package com.springmvcproject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.springmvcproject.service.PatientRepository;
import com.springmvcproject.service.PatientService;
import com.springmvcproject.service.RegisterRepository;
import com.springmvcproject.service.RegisterService;

@Controller
public class PatientController {

	@Autowired
	private PatientService service;
	
	@Autowired
	private DoctorService doctorservice;
	
	String message="";
	
	@Autowired
	private RegisterRepository registerrepo;
	
	@Autowired
	private RegisterService registerservice;
	
	@RequestMapping("/appointmentlist")
	public ModelAndView getAppointments()
	{
		ModelAndView view=new ModelAndView("appointmentlist");
		List<Patient> appointmentlist=service.listall();
		view.addObject("appointmentlist",appointmentlist);
		return view;
	}
	
	@RequestMapping("/patientlist")
	public ModelAndView getPatientList()
	{
		ModelAndView view=new ModelAndView("patientlist");
		List<Patient> patientlist=service.listall();
		view.addObject("patientlist",patientlist);
		return view;
	}
	
	@RequestMapping("/patientdashboard")
	public ModelAndView login(@RequestParam String email,@RequestParam String password)
	{
		Register register=registerservice.findByEmail(email);
		message=register.getUsername();
		if(email.equalsIgnoreCase(register.getEmail()) && password.equals(register.getPassword()))
			return new ModelAndView("patientdashboard","message",message);
		
		return new ModelAndView("errorpage");
		
	}
	
	@RequestMapping("/patientlogin")
	public ModelAndView getView()
	{
		ModelAndView view=new ModelAndView("patientlogin");
		return view;
	}
	
	@RequestMapping("/appointmentform")
	public ModelAndView appointment(Map<String,Object> model)
	{
		model.put("patient", new Patient());
		List<Doctor> doctorlist=doctorservice.listall();
		return new ModelAndView("appointmentform","doctorlist",doctorlist);
	}
	
	@RequestMapping(value="/savepatient" , method = RequestMethod.POST)
	public String savePatient(@ModelAttribute("patient") Patient patient)
	{
		service.save(patient);
		return "success";
	}
	
	@RequestMapping("/update")
	public ModelAndView editAppointment(@RequestParam long id)
	{
		ModelAndView view=new ModelAndView("edit_appointment");
		Patient patient=service.edit(id);
		view.addObject("patient",patient);
		return view;
	}
	
	@RequestMapping("/remove")
	public String deleteAppointment(@RequestParam long id)
	{
		service.delete(id);
		return "redirect:appointmentlist/";
	}
	
	@RequestMapping("/searchappointment")
	public ModelAndView search(@RequestParam String keyword)
	{
		ModelAndView view=new ModelAndView("searchpatient");
		List<Patient> list=service.searchappointment(keyword);
		view.addObject("list",list);
		return view;
	}

	@RequestMapping("/appointmenthistory")
	public ModelAndView history()
	{
		ModelAndView view=new ModelAndView("appointmenthistory");
		List<Patient> patienthistory=service.listall();
		List<Patient> appointmenthistory=new ArrayList<>();
		for (Patient patient : patienthistory) {
			if(patient.getPatientName().equalsIgnoreCase(message))
				appointmenthistory.add(patient);
		}
		view.addObject("appointmenthistory",appointmenthistory);
		return view;
	}
}
