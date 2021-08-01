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
//import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="routine")
public class Routine {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="age_group")
	private int ageGroup;
	
	//Planın PlanChildları:
	@OneToMany(mappedBy="plan")
	private List<PlanChild> planChild; 
	
	@ManyToMany(cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinTable(name="planchild", joinColumns=@JoinColumn(name="routine_id"), inverseJoinColumns=@JoinColumn(name="plan_id"))
	private List<Plan> plans;
	
	
	//constructor
	public Routine() {
		
	}
		
	//parametric cons.
	public Routine(String name, int ageGroup) {
		super();
		this.name = name;
		this.ageGroup = ageGroup;
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
	

	public int getAgeGroup() {
		return ageGroup;
	}

	public void setAgeGroup(int ageGroup) {
		this.ageGroup = ageGroup;
	}
	
	
	public List<PlanChild> getPlanChild() {
		return planChild;
	}

	public void setPlanChild(List<PlanChild> planChild) {
		this.planChild = planChild;
	}

	public List<Plan> getPlans() {
		return plans;
	}

	public void setPlans(List<Plan> plans) {
		this.plans = plans;
	}

	//add methodu
	public void addPlan(Plan thePlan) {
		if(plans == null)
			plans = new ArrayList<>();
				
				
		plans.add(thePlan);
	}
			
	
	//add methodu
	public void add(PlanChild tempPlanChild) {
		if(planChild==null)
			planChild = new ArrayList<>();
					
		planChild.add(tempPlanChild);
					
		tempPlanChild.setRoutine(this);
	}
	
	
	@Override
	public String toString() {
		return "Routine [id=" + id + ", name=" + name + ", ageGroup=" + ageGroup 
				+/* ", userId=" + userId + ", user=" + user +*/ "]";
	}
	
	
	
}
