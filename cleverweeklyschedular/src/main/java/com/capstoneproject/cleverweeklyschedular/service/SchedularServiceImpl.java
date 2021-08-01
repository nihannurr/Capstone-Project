package com.capstoneproject.cleverweeklyschedular.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.capstoneproject.cleverweeklyschedular.dao.RoutineRepository;
import com.capstoneproject.cleverweeklyschedular.dao.UserRepository;
import com.capstoneproject.cleverweeklyschedular.dao.PlanRepository;
import com.capstoneproject.cleverweeklyschedular.dao.PlanChildRepository;
import com.capstoneproject.cleverweeklyschedular.exception.UserNotFoundException;
import com.capstoneproject.cleverweeklyschedular.model.Routine;
import com.capstoneproject.cleverweeklyschedular.model.User;
import com.capstoneproject.cleverweeklyschedular.model.Plan;
import com.capstoneproject.cleverweeklyschedular.model.PlanChild;

@Service
public class SchedularServiceImpl implements SchedularService {

	//USER:
	private UserRepository userRepository;

	@Override
	@Transactional
	public List<User> getUsers() {
		return userRepository.getUsers();
	}
	
	@Override
	@Transactional
	public void saveUser(User theUser) {
		userRepository.saveUser(theUser);
	}
	
	
	//ROUTINE:	
	private RoutineRepository routineRepository;
	
	@Override
	@Transactional
	public List<Routine> getRoutines() {
		return routineRepository.getRoutines();
	}
	
	@Override
	@Transactional
	public void saveRoutine(Routine theRoutine) {
		routineRepository.saveRoutine(theRoutine);
	}
	
	
	
	//PLAN:
	private PlanRepository planRepository;

	@Override
	@Transactional
	public List<Plan> getPlans() {
		return planRepository.getPlans();
	}
	
	@Override
	@Transactional
	public void savePlan(Plan thePlan) {
		planRepository.savePlan(thePlan);
	}
	
	

	//PLANCHILD:
	private PlanChildRepository planChildRepository;
	
	@Override
	@Transactional
	public List<PlanChild> getPlanChilds() {
		return planChildRepository.getPlanChilds();
	}
	
	@Override
	@Transactional
	public void savePlanChild(PlanChild thePlanChild) {
		planChildRepository.savePlanChild(thePlanChild);
	}
	
	
}
