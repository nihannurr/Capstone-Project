package com.capstoneproject.cleverweeklyschedular.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.capstoneproject.cleverweeklyschedular.dao.UserRepository;
import com.capstoneproject.cleverweeklyschedular.model.Routine;
import com.capstoneproject.cleverweeklyschedular.model.User;
import com.capstoneproject.cleverweeklyschedular.service.SchedularService;
//import com.capstoneproject.cleverweeklyschedular.service.SchedularService;

@Controller
public class SchedularController {
	
	@Autowired
	private SchedularService schedularService;
	

	@RequestMapping("/welcome")
	public ModelAndView getFirstPage() {
		ModelAndView mav = new ModelAndView();
		//mav2.addObject("/page1", SchedularService.findRoutines());
		mav.setViewName("/welcome");
		return mav;
	}
	
	//USER
	@GetMapping("/list")
	public String listUsers(Model theModel) {
		
		//List<User> theUsers = schedularService.getUsers();
		
		User user1 = new User();
		user1.setId(1);
		user1.setFirstName("Nihan");
		user1.setLastName("Singir");
		user1.setGender("Female");
		user1.setAgeGroup(2);
		/*
		User user2 = new User();
		user2.setId(2);
		user2.setFirstName("Aylin");
		user2.setLastName("Serdaroglu");
		user2.setGender("Female");
		user1.setAgeGroup(1);
		*/
		theModel.addAttribute("users", user1);
		//theModel.addAttribute("users", user2);
		
		return "list";
	}
	
	@GetMapping("/users")
	public String showFormForAdd(Model theModel) {
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "users";
	}
	
	@PostMapping("/users")
	public String saveUser(@ModelAttribute("user") User theUser) {
		schedularService.saveUser(theUser);
		return "redirect:/users";
	}
	
	
	@RequestMapping("/users")
	public ModelAndView getUsers() {
		ModelAndView mav = new ModelAndView(); //context
		//mav.addObject("users", SchedularService.findUsers());
		mav.addObject("users", mav);
		mav.setViewName("users");
		return mav;
	}
	
	@RequestMapping("/routines")
	public ModelAndView getRoutines() {
		ModelAndView mav = new ModelAndView();
	//	mav.addObject("routines", SchedularService.findRoutines());
		mav.setViewName("routines");
		return mav;
	}
	
	@RequestMapping("/weekly_hour")
	public ModelAndView getHourPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/weekly_hour");
		return mav;
	}
	
	@RequestMapping("/customize")
	public ModelAndView getCustPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/customize");
		return mav;
	}
	
	@RequestMapping("/more_routines")
	public ModelAndView getMoreRoutinesPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/more_routines");
		return mav;
	}
	
	@RequestMapping("/plans")
	public ModelAndView getPlans() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/plans");
		return mav;
	}
	
	
	
	
	
	
}
