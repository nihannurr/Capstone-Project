package com.capstoneproject.cleverweeklyschedular.dao.mem;

import java.util.ArrayList;
//import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.capstoneproject.cleverweeklyschedular.dao.PlanChildRepository;
import com.capstoneproject.cleverweeklyschedular.model.PlanChild;
import com.capstoneproject.cleverweeklyschedular.model.User;

@Repository
public class PlanChildRepositoryInMemoryImpl implements PlanChildRepository {
	
	private Map<Integer, PlanChild> planchildsMap= new HashMap<>();
	
	@Autowired
	 private EntityManager entityManager;
	 private Session getSession() {
	     return entityManager.unwrap(Session.class);
	 }
	
	@Override
	public List<PlanChild> getPlanChilds() {
		Session currentSession = getSession();
		Query<PlanChild> theQuery = currentSession.createQuery("from PlanChild", PlanChild.class);
		
		List<PlanChild> planChilds = theQuery.getResultList();
		return planChilds;
	}
	
	@Override
	public void savePlanChild(PlanChild thePlanChild) {
		Session currentSession = getSession();
		currentSession.save(thePlanChild);
		
	}
}
