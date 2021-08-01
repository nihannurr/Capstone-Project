package com.capstoneproject.cleverweeklyschedular.dao;

import java.util.List;

import com.capstoneproject.cleverweeklyschedular.model.PlanChild;

//ABSTRACT CLASS 
public interface PlanChildRepository {
	
	/*List<PlanChild> findAll();
	PlanChild findById(int id);
	//List<PlanChild> findByName(String Name);
	
	void create(PlanChild planchild);
	PlanChild update(PlanChild planchild);
	void delete(int id);
	//void deleteByUserId(Long userId);
	*/
	
	//New ones:
	public List<PlanChild> getPlanChilds();
	public void savePlanChild(PlanChild thePlanChild);
		
}
