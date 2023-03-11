package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.dao.UserRepository;
import com.blog.model.User;

@Controller
public class SearchController {
	
	@Autowired
	private UserRepository userRepository;
	
	@RequestMapping("/search")
	public String search() {
		
		return "search";
	}
	
	@GetMapping("/do_search")
	public String searching(@RequestParam String email,Model model) {
		User u = new User();
		
		System.out.println(email);
		
		User user = this.userRepository.findByEmail(email);
		if(user == null) {
			model.addAttribute("message","this user does not exist");
			return "search";
		}else {
			System.out.println(user);
		    model.addAttribute("user", user.getEmail());
			
		}
		
		System.out.println(user);
		
		
		return "search";
	}

}
