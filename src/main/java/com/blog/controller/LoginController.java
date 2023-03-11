package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.dao.AdminRepository;
import com.blog.dao.UserRepository;
import com.blog.model.Admin;
import com.blog.model.User;

@Controller
public class LoginController {

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired	
	private UserRepository userRepository;
	
//-----------------------LOGIN HANDLER BASED ON ROLE-------------------------------------	
	
	@GetMapping(value = "/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(path = "/do_login",method=RequestMethod.POST)
	public String validUser(@RequestParam("username")String username, 
			@RequestParam("password")String password,@RequestParam String role,ModelMap map,Model model) {
		
		System.out.println(username);
		System.out.println(password);
//		System.out.println(role);
		
		String email = username;
		String pass = password;
		System.out.println(email);
		System.out.println(pass);
		
		if(role.equals("Admin")){ 
			Iterable<Admin> admin = adminRepository.findAll();
			for (Admin element : admin) {
				if(element.getUsername().equals(username) && element.getPassword().equals(password)) {
					return "adminPage";
				}
				else {
					model.addAttribute("message","Bad cridentials");
					return "login";
				}
			}
		}
				
		if(role.equals("User"))	{
			User u = new User();					
			u = this.userRepository.findByEmailAndPassword(email,pass);
			if(u == null) {
				model.addAttribute("message","This email does not exist");
				return "login";
			}else {
				return "home";
			}
		}
		return "error";
	}
//----------------------------------------END----------------------------------------------	
	
//-------------------------------REGISTER HANDLER------------------------------------------	
	
	@GetMapping(value = "/register")
	public String register() {
		return "register";
	}

	@RequestMapping(path = "/do_register",method=RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model) {
		
	    User u = null;
//		System.out.println(user);
	    u = this.userRepository.findByEmail(user.getEmail());
		if(u != null) {
			model.addAttribute("message", "This email is already exist");
			return "register";
		}else {
		    this.userRepository.save(user);
		    return "login";
		}
		
	}
//---------------------------------END-----------------------------------------------------	
 }
