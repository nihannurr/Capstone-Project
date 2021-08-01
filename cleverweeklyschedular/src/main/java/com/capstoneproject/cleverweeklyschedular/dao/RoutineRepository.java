package com.capstoneproject.cleverweeklyschedular.dao;

import java.util.List;

import com.capstoneproject.cleverweeklyschedular.model.Routine;

public interface RoutineRepository {
	
	/*
	List<Routine> findAll();
	Routine findById(int id);
	List<Routine> findByName(String Name);
	
	void create(Routine routine);
	Routine update(Routine routine);
	void delete(int id);
	void deleteByUserId(int userId);
	*/
	
	//New ones:
	public List<Routine> getRoutines();
	public void saveRoutine(Routine theRoutine);
	
}
