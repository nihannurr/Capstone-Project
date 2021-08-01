package com.capstoneproject.cleverweeklyschedular;

import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SchedularConfiguration {
	
	@Autowired
	private SchedularProperties SchedularProperties;
		
	
	@PostConstruct
	public void init() {
		System.out.println("Display users: " + SchedularProperties.isDisplayUsers());
	}
	
	
	@PostConstruct
	public void init2() {
		System.out.println("Display routines: " + SchedularProperties.isDisplayRoutines());
	}
	
	@PostConstruct
	public void init3() {
		System.out.println("Display plans: " + SchedularProperties.isDisplayPlans());
	}
	
	@PostConstruct
	public void init4() {
		System.out.println("Display plan childs: " + SchedularProperties.isDisplayPlanChilds());
	}
	
}


