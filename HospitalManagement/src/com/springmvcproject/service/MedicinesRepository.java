package com.springmvcproject.service;

import org.springframework.data.repository.CrudRepository;

import com.springmvcproject.entity.Medicines;


public interface MedicinesRepository extends CrudRepository<Medicines, Long> {

}
