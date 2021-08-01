package com.capstoneproject.cleverweeklyschedular.dao;

import java.util.List;

import com.capstoneproject.cleverweeklyschedular.model.User;

public interface UserRepository {
	
	/*
	List<User> findAll();
	User findById(int id);
	List<User> findByLastName(String lastName);
	
	void create(User user);
	User update(User user);
	void delete(int id);
	*/
	
	//New ones:
	public List<User> getUsers();
	public void saveUser(User theUser);
	
	
	
}
