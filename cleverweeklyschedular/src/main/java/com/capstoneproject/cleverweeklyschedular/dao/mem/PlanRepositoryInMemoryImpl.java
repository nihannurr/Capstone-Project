package com.capstoneproject.cleverweeklyschedular.dao.mem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.capstoneproject.cleverweeklyschedular.dao.PlanRepository;
import com.capstoneproject.cleverweeklyschedular.model.Plan;
import com.capstoneproject.cleverweeklyschedular.model.User;


@Repository
public class PlanRepositoryInMemoryImpl implements PlanRepository {

	private Map<Integer, Plan> plansMap= new HashMap<>();
	
	@Autowired
	 private EntityManager entityManager;
	 private Session getSession() {
	     return entityManager.unwrap(Session.class);
	 }
	
	public PlanRepositoryInMemoryImpl() {
		Plan plan1 = new Plan();
		plan1.setId(1);
		plan1.setName("Plan 1");
		//plan1.setUserId(1L);
		
		Plan plan2 = new Plan();
		plan2.setId(2);
		plan2.setName("Plan 2");
		//plan1.setUserId(2L);
		
		Plan plan3 = new Plan();
		plan3.setId(3);
		plan3.setName("Plan 3");
		//plan1.setUserId(3L);
		
		plansMap.put(plan1.getId(), plan1);
		plansMap.put(plan2.getId(), plan2);
		plansMap.put(plan3.getId(), plan3);
		
	}
	
	@Override
	public List<Plan> getPlans() {
		Session currentSession = getSession();
		Query<Plan> theQuery = currentSession.createQuery("from Plan", Plan.class);
		
		List<Plan> plans = theQuery.getResultList();
		return plans;
	}
	
	@Override
	public void savePlan(Plan thePlan) {
		Session currentSession = getSession();
		currentSession.save(thePlan);
		
	}
	
}
