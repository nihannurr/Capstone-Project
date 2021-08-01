package com.capstoneproject.cleverweeklyschedular.model;


import java.time.LocalTime;
//import java.util.ArrayList;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="planchild")
public class PlanChild {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="day")
	private String day;
	
	@Column(name="starting_time")
	private LocalTime startingTime;
	
	@Column(name="ending_time")
	private LocalTime endingTime;
	
	
	//super class tipinde field:
	@ManyToOne(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="plan_id")
	private Plan plan;
	
	//super class tipinde field:
	@ManyToOne(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="routine_id")
	private Routine routine;


	//constructor
	public PlanChild() {
		
	}
	
	//parametric cons.
	
	
	
	public int getId() {
		return id;
	}
	public PlanChild(String name, String day, LocalTime startingTime, LocalTime endingTime, Plan plan,
			Routine routine) {
		super();
		this.name = name;
		this.day = day;
		this.startingTime = startingTime;
		this.endingTime = endingTime;
		this.plan = plan;
		this.routine = routine;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public LocalTime getStartingTime() {
		return startingTime;
	}
	public void setStartingTime(LocalTime startingTime) {
		this.startingTime = startingTime;
	}
	public LocalTime getEndingTime() {
		return endingTime;
	}
	public void setEndingTime(LocalTime endingTime) {
		this.endingTime = endingTime;
	}
	
	
	public Plan getPlan() {
		return plan;
	}
	public void setPlan(Plan plan) {
		this.plan = plan;
	}
	public Routine getRoutine() {
		return routine;
	}
	public void setRoutine(Routine routine) {
		this.routine = routine;
	}
	
	
	@Override
	public String toString() {
		return "PlanChild [id=" + id + ", name=" + name +", day=" + day + ", startingTime=" + startingTime + ", endingTime=" + endingTime
				+ /* ", routineId=" + routineId + ", planId=" + planId +*/ "]";
	}
	
	
	
}
