package com.springmvcproject.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.GeneratorType;

@Entity
public class Prescription {
	@Id
	private Long id;
	private String medicine;
	private String labtest;
	
	
	public Prescription(String medicine, String labtest) {
		super();
		this.medicine = medicine;
		this.labtest = labtest;
	}
	
	public Prescription() {
		super();
	}	

	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLabtest() {
		return labtest;
	}
	public void setLabtest(String labtest) {
		this.labtest = labtest;
	}
	
}
