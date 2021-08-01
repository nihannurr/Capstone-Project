package com.capstoneproject.cleverweeklyschedular.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="plan")
public class Plan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	//private Long userId;

	//super class tipinde field:
	@ManyToOne(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="user_id")
	private User user;
	
	//Planın PlanChildları:
	@OneToMany(mappedBy="plan", cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	private List<PlanChild> planChild; //= new List<PlanChild>();
		
	@ManyToMany(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinTable(name="planchild", joinColumns=@JoinColumn(name="plan_id"), inverseJoinColumns=@JoinColumn(name="routine_id"))
	private List<Routine> routines;
	
	
	
	//constructor:
	public Plan() {
		
	}
	
	//parametric cons:
	public Plan(String name, User user/*, List<PlanChild> planChild*/) {
		super();
		this.name = name;
		this.user = user;
		//this.planChild = planChild;
	}
	
	

	public int getId() {
		return id;
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
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<PlanChild> getPlanChild() {
		return planChild;
	}

	public void setPlanChild(List<PlanChild> planChild) {
		this.planChild = planChild;
	}
	
		
	public List<Routine> getRoutines() {
		return routines;
	}

	public void setRoutines(List<Routine> routines) {
		this.routines = routines;
	}

	/*
	//add methodu
	public void add(PlanChild tempPlanChild) {
		if(planChild==null)
			planChild = new ArrayList<>();
					
		planChild.add(tempPlanChild);
					
		tempPlanChild.setPlan(this);
	}
	*/
	
	//add methodu
	public void addRoutine(Routine theRoutine) {
		if(routines == null)
			routines = new ArrayList<>();
					
					
		routines.add(theRoutine);
	}
		
	
	//add methodu
	public void add(PlanChild tempPlanChild) {
		if(planChild==null)
			planChild = new ArrayList<>();
				
		planChild.add(tempPlanChild);
				
		tempPlanChild.setPlan(this);
	}
	

	@Override
	public String toString() {
		return "Plan [id=" + id + ", name=" + name + /*", userId=" + userId +*/ /*", user=" + user +*/ "]";
	}
	
	
	

}
