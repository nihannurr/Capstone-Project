package com.capstoneproject.cleverweeklyschedular.hib;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.capstoneproject.cleverweeklyschedular.model.Plan;
import com.capstoneproject.cleverweeklyschedular.model.PlanChild;
import com.capstoneproject.cleverweeklyschedular.model.Routine;
import com.capstoneproject.cleverweeklyschedular.model.User;


public class UserInstructorDemo {

	public static void main(String[] args) {
		
		// session factory
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(User.class).addAnnotatedClass(Plan.class)
				.addAnnotatedClass(PlanChild.class).addAnnotatedClass(Routine.class).buildSessionFactory();
		
		// Session
		Session session = factory.getCurrentSession();
		
		try {
			
			//beginning transaction:
			session.beginTransaction();
			
			System.out.println("Creating record...");
			
			//Creating User
			User tempUser = new User("aleyna","ayaz","Female",2);
			/*
			//Creating Plan
			int theUserId = 6;
			User tempUser = session.get(User.class, theUserId);
			Plan tempPlan = new Plan("my second plan", tempUser);
			*/
			/*
			//Creating PlanChild
			int thePlanId = 4;
			Plan tempPlan = session.get(Plan.class, thePlanId);
			int theRoutineId = 1;
			Routine tempRoutine = session.get(Routine.class, theRoutineId);
			LocalTime t1 = LocalTime.parse("15:00");
			LocalTime t2 = LocalTime.parse("16:00");
			PlanChild tempPlanChild = new PlanChild("reading","friday", t1, t2, tempPlan, tempRoutine);
			*/
			/*
			//Creating Routine
			Routine tempRoutine = new Routine("playing basketball",1);
			*/
			
			//tempPlan.add();
			

			
			System.out.println("Saving data....");
			session.save(tempUser);
			//session.save(tempPlan1);
			//session.save(tempPlanChild);
			//session.save(tempRoutine);
			
			
			//ending transaction:
			session.getTransaction().commit();
			System.out.println("Donee!!");
			
		}
		finally {
			session.close();
			factory.close();
		}
		

	}

}
