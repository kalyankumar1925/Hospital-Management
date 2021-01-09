package com.springmvcproject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvcproject.entity.Patient;
import com.springmvcproject.entity.Prescription;
import com.springmvcproject.service.PatientService;
import com.springmvcproject.service.PrescriptionService;


@Controller
public class PrescriptionController {

	@Autowired
	private PrescriptionService prescriptionservice;
	
	@Autowired
	private PatientService patientservice;
	
	long getid=0;
	
	@RequestMapping(value="/saveprescription" , method = RequestMethod.POST)
	public String savePrescription(@ModelAttribute("prescription")Prescription prescription)
	{
		prescriptionservice.save(prescription);
		return "redirect:/";
	}
	
	
	@RequestMapping("/prescriptionform")
	public ModelAndView appointment(Map<String,Object> model,@RequestParam long id)
	{
		model.put("prescription", new Prescription());
		getid=id;
		return new ModelAndView("prescriptionform","getid",getid);
	}
	
	@RequestMapping("/prescription")
	public ModelAndView addprescription(@RequestParam long id)
	{
		ModelAndView view=new ModelAndView("prescriptionform?id=id");
		Patient patient=patientservice.edit(id);
		view.addObject("patient",patient);
		return view;
	}
	
	@RequestMapping("viewprescription")
	public ModelAndView viewPrescription(@RequestParam long id)
	{
		List<Long> pid=new ArrayList<>();
		List<Prescription> prescriptionlist=prescriptionservice.listall();
		for (Prescription prescription : prescriptionlist) {
			pid.add(prescription.getId());
		}
		
		if(pid.contains(id))
		{
			ModelAndView view=new ModelAndView("viewprescription");
			Prescription prescription=prescriptionservice.edit(id);
			view.addObject("prescription",prescription);
			return view;
		}
		else
			return new ModelAndView("errorid");
	}
}
