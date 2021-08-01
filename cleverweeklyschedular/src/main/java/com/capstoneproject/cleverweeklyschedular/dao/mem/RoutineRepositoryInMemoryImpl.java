package com.capstoneproject.cleverweeklyschedular.dao.mem;

import java.util.ArrayList;
//import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.capstoneproject.cleverweeklyschedular.dao.RoutineRepository;
import com.capstoneproject.cleverweeklyschedular.model.Routine;
import com.capstoneproject.cleverweeklyschedular.model.User;

@Repository
public class RoutineRepositoryInMemoryImpl implements RoutineRepository {
	
	private Map<Integer, Routine> routinesMap= new HashMap<>();
	
	@Autowired
	 private EntityManager entityManager;
	 private Session getSession() {
	     return entityManager.unwrap(Session.class);
	 }
	
	public RoutineRepositoryInMemoryImpl() {
		/*
		Routine routine1 = new Routine();
		routine1.setId(1);
		routine1.setName("Reading");
		routine1.setAgeGroup(2);
		//routine1.setUserId(1L);
		
		Routine routine2 = new Routine();
		routine2.setId(2);
		routine2.setName("Swimming");
		routine2.setAgeGroup(1);
		//routine2.setUserId(2L);
		
		Routine routine3 = new Routine();
		routine3.setId(3);
		routine3.setName("Working");
		routine3.setAgeGroup(1);
		//routine3.setUserId(3L);
		
		Routine routine4 = new Routine();
		routine4.setId(4);
		routine4.setName("Meeting");
		routine4.setAgeGroup(3);
		
		Routine routine5 = new Routine();
		routine5.setId(5);
		routine5.setName("Playing");
		routine5.setAgeGroup(5);
		
		routinesMap.put(routine1.getId(), routine1);
		routinesMap.put(routine2.getId(), routine2);
		routinesMap.put(routine3.getId(), routine3);
		routinesMap.put(routine4.getId(), routine4);
		routinesMap.put(routine5.getId(), routine5);
	*/	
	}
	
	@Override
	public List<Routine> getRoutines() {
		Session currentSession = getSession();
		Query<Routine> theQuery = currentSession.createQuery("from Routine", Routine.class);
		
		List<Routine> routines = theQuery.getResultList();
		return routines;
	}
	
	@Override
	public void saveRoutine(Routine theRoutine) {
		Session currentSession = getSession();
		currentSession.save(theRoutine);
		
	}
	
}
