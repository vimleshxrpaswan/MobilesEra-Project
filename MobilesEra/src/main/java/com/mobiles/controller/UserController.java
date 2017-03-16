package com.mobiles.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.model.User;
import com.mobiles.service.UserService;

@Controller
public class UserController 
{
	@Autowired
	UserService userService;
	
	@RequestMapping("/registrationPage")
	public String userRegistrationPage(Model model )
	{
		model.addAttribute("user", new User());
		return "registration";
	}
		
	@RequestMapping("/addUser")
	public String addCategory(@ModelAttribute("user")User user)
	{
		userService.addUser(user);
		return "redirect:/login";
	}

	@RequestMapping("/login")
	public String getLoginPage()
	{
		return "login";
	}
	
	
}
