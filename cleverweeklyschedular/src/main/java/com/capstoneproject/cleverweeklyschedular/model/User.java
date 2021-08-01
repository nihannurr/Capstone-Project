package com.capstoneproject.cleverweeklyschedular.model;

import java.util.ArrayList;
import java.util.List;
//import java.util.HashSet;
//import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="age_group")
	private int ageGroup;
	
	
	//User'ın planları:
	@OneToMany(mappedBy="user", cascade= {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	private List<Plan> plan;
	
	
	//constructor
	public User() {
		
	}
	
	//parametrik constructor
	public User(/*int uid,*/ String firstName, String lastName, String gender, int ageGroup) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.ageGroup = ageGroup;
	}//id oto. olusturuluyor 
	

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public int getAgeGroup() {
		return ageGroup;
	}

	public void setAgeGroup(int ageGroup) {
		this.ageGroup = ageGroup;
	}

	public List<Plan> getPlan() {
		return plan;
	}

	public void setPlan(List<Plan> plan) {
		this.plan = plan;
	}

	//add methodu
	public void add(Plan tempPlan) {
		if(plan==null)
			plan = new ArrayList<>();
		
		plan.add(tempPlan);
		
		tempPlan.setUser(this);
	}
	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender
				+ ", ageGroup=" + ageGroup + "]";
	}

	

	
	
	
}
