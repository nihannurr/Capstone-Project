package com.capstoneproject.cleverweeklyschedular.dao;

import java.util.List;

import com.capstoneproject.cleverweeklyschedular.model.Plan;

public interface PlanRepository {

	/*
	List<Plan> findAll();
	Plan findById(int id);
	List<Plan> findByName(String Name);
	
	void create(Plan plan);
	Plan update(Plan plan);
	void delete(int id);
	void deleteByUserId(int userId);
	*/
	
	//New ones:
	public List<Plan> getPlans();
	public void savePlan(Plan thePlan);
	
	
}
