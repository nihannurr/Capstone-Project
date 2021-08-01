package com.capstoneproject.cleverweeklyschedular.service;

import java.util.List;

import com.capstoneproject.cleverweeklyschedular.exception.UserNotFoundException;
import com.capstoneproject.cleverweeklyschedular.model.Plan;
import com.capstoneproject.cleverweeklyschedular.model.PlanChild;
import com.capstoneproject.cleverweeklyschedular.model.Routine;
import com.capstoneproject.cleverweeklyschedular.model.User;

public interface SchedularService {
		
	//yeni eklediklerim:
	public List<User> getUsers();
	public void saveUser(User theUser);
	
	public List<Routine> getRoutines();
	public void saveRoutine(Routine theRoutine);
	
	public List<Plan> getPlans();
	public void savePlan(Plan thePlan);
	
	public List<PlanChild> getPlanChilds();
	public void savePlanChild(PlanChild thePlanChild);
		
}
