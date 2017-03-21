package com.mobiles.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
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
	public String addUser(@ModelAttribute("user")User user)
	{
		userService.addUser(user);
		return "redirect:/login";
	}

	@RequestMapping("/login")
	public String getLoginPage()
	{
		return "login";
	}
	
	@RequestMapping("/logout")
	public String getLogout(HttpServletRequest request, HttpServletResponse response )
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null)
		{
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "main-login";
	}
}
