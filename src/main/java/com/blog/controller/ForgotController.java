package com.blog.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.dao.UserRepository;
import com.blog.model.User;
import com.blog.service.EmailService;

@Controller
public class ForgotController {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private EmailService emailService;
	
	Random random = new Random();
	
	@RequestMapping("/forgot")
	public String openEmailForm() {
		return "forgot";
	}
	
	@RequestMapping(path="/send_otp",method=RequestMethod.POST)
	public String sendOtp(@RequestParam("email") String email,HttpSession session,Model model) {
		
		System.out.println("Email : "+email);
		
		int otp = random.nextInt(9999);
		System.out.println("OTP : " +otp);
		
		String subject = "OTP from Blog";
		String message = ""
				          +"<div style='border:1px solid e2e2e2; padding:20px;'>"
				          +"<h1>" 
				          +"OTP is : "
				          +"<br>"+otp
				          +"\n"
				          +"</div>";
		String to = email;
		
		boolean flag = false;
		User user = null;
		user = this.userRepository.findByEmail(email);
		if(user != null) {
		   this.emailService.sendEmail(subject, message, to);
		   flag = true;
		}else {
			model.addAttribute("message", "Please enter your correct email !!");			
			return "forgot";
		}
		
		if(flag) {
			session.setAttribute("myotp", otp);
			session.setAttribute("email", email);
			return "verifyotp";
		}else {
			return "error";
		}
		                    
	}
	
		@RequestMapping("/verifyotp")
		public String verify() {
			return "verifyotp";
		}
	
	    //verify otp
		@PostMapping("/verify_otp")
		public String verifyOtp(@RequestParam("otp") int otp,HttpSession session,Model model) {
			
			int myotp = (Integer) session.getAttribute("myotp");
			String email = (String) session.getAttribute("email");
			
			if(myotp == otp) {				
				User user = this.userRepository.findByEmail(email);				 
				if(user == null) {
					//send error message
					model.addAttribute("message", "User does not exist with this email !!");
					return "forgot";
				}else {
					//send change password form				
				}			
				return "passwordChangeForm";
			}else {
				model.addAttribute("message", "You have entered wrong OTP !!");
				return "verifyotp";
			}			
		}
		
		@RequestMapping("/reset")
		public String reset() {
			return "passwordChangeForm";
		}
		//change password
		@RequestMapping(path="/reset_password",method=RequestMethod.POST)
		public String changePassword(@RequestParam String newPassword,@RequestParam String confirmPassword,HttpSession session,Model model) {
			
			String email = (String) session.getAttribute("email");
			
			User user = this.userRepository.findByEmail(email);

			String str1 = newPassword;
			String str2 = confirmPassword;
			
			if(str1.equals(str2)) {
				user.setPassword(str1);
				this.userRepository.save(user);
			}else {
				model.addAttribute("message", "Password does not matched !!");
				return "passwordChangeForm";
			}			
						
			return "login";
		}		
}
