package com.capstoneproject.cleverweeklyschedular.hib;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.capstoneproject.cleverweeklyschedular.model.User;


public class UserDemo {

	public static void main(String[] args) {
		
		// session factory
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(User.class).buildSessionFactory();
		
		// Session
		Session session = factory.getCurrentSession();
		
		try {
			System.out.println("Creating user...");
			User tempUser = new User(/*(long) 4563,*/"qwertwer","qeterw","Male",3);
			
			session.beginTransaction();
			
			System.out.println("SAving stu....");
			session.save(tempUser);
			
			session.getTransaction().commit();
			
			System.out.println("Donee!!");
			
		}
		finally {
			
			//session.close();
			
			factory.close();
		}
		

	}

}
