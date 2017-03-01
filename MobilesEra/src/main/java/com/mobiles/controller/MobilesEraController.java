package com.mobiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MobilesEraController 
{
	@RequestMapping("/")
	public String getHome()
	{
		return "home";
	}
}
