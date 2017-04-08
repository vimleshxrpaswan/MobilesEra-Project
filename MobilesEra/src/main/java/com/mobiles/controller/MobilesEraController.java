package com.mobiles.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.service.CategoryService;
import com.mobiles.service.ProductService;
import com.mobiles.service.SubCategoryService;

@Controller
public class MobilesEraController 
{
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	ProductService productService;
		
	@RequestMapping("/")
	public String getHome(Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		return "home";
	}
	
	@RequestMapping("/aboutus")
	public String getAboutUsPage(Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "aboutus";
	}

	@RequestMapping("/contactus")
	public String getContactUsPage(Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "contactus";
	}
	
	@RequestMapping("/faq")
	public String getFaqsPage(Model model)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "faqs";
	}
	
	@RequestMapping("/403")
	public String accesssDenied(Principal username)
	{
		return "403";
	}
	
	@RequestMapping("/404")
	public String pageNotFound()
	{
		return "404";
	}
	
}
