package com.capstoneproject.cleverweeklyschedular.dao.mem;

import java.util.ArrayList;
//import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;

//import javax.transaction.Transactional;  //!!!!!!!!!!
//import org.springframework.transaction.annotation.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Repository;

import com.capstoneproject.cleverweeklyschedular.dao.UserRepository;
import com.capstoneproject.cleverweeklyschedular.model.User;

@Repository
public class UserRepositoryInMemoryImpl implements UserRepository {
	
	 @Autowired
	 private EntityManager entityManager;
	 private Session getSession() {
	     return entityManager.unwrap(Session.class);
	 }
	
	private Map<Integer, User> usersMap= new HashMap<>();

	public UserRepositoryInMemoryImpl() {
		/*User user1 = new User();
		user1.setId(1);
		user1.setFirstName("Nihan");
		user1.setLastName("Singir");
		user1.setGender("Female");
		user1.setAgeGroup(2);
		
		User user2 = new User();
		user2.setId(2);
		user2.setFirstName("Aylin");
		user2.setLastName("Serdaroglu");
		user2.setGender("Female");
		user1.setAgeGroup(1);
		
		usersMap.put(user1.getId(), user1);
		usersMap.put(user2.getId(), user2);*/	
	}

	@Override
	public List<User> getUsers() {
		Session currentSession = getSession();
		Query<User> theQuery = currentSession.createQuery("from User", User.class);
		
		List<User> users = theQuery.getResultList();
		return users;
	}
	
	@Override
	public void saveUser(User theUser) {
		Session currentSession = getSession();
		currentSession.save(theUser);
		
	}
	

	
}
