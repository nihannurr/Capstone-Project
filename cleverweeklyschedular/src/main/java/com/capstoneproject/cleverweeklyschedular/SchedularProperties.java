package com.capstoneproject.cleverweeklyschedular;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix="cleverweeklyschedular")
public class SchedularProperties {
	private boolean displayUsers = false;
	private boolean displayRoutines = false;
	private boolean displayPlans = false;
	private boolean displayPlanChilds = false;
	
	public boolean isDisplayUsers() {
		return displayUsers;
	}
	
	public void setDisplayUsers(boolean displayUsers) {
		this.displayUsers = displayUsers;
	}
	
	public boolean isDisplayRoutines() {
		return displayRoutines;
	}
	
	public void setDisplayRoutines(boolean displayRoutines) {
		this.displayRoutines = displayRoutines;
	}

	public boolean isDisplayPlans() {
		return displayPlans;
	}
	
	public void setDisplayPlans(boolean displayPlans) {
		this.displayPlans = displayPlans;
	}
	
	public boolean isDisplayPlanChilds() {
		return displayPlanChilds;
	}
	
	public void setDisplayPlanChilds(boolean displayPlanChilds) {
		this.displayPlanChilds = displayPlanChilds;
	}

	
}
