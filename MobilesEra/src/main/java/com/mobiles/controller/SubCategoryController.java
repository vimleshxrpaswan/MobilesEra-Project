package com.mobiles.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.model.SubCategory;
import com.mobiles.service.CategoryService;
import com.mobiles.service.SubCategoryService;

@Controller
public class SubCategoryController 
{
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/subCategoryPage")
	public String getSubCategoryPage(Model model)
	{
		
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "subcategories";
	}
	
	@RequestMapping("/addSubCategory")
	public String addSubCategory(@ModelAttribute("subCategory")SubCategory subCategory)
	{
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/subCategoryPage";
	}
	
	@RequestMapping("/updateSubCategoryById-{subCategoryId}")
	public String updateSubCategory(Model model,@PathVariable("subCategoryId") int subCategoryId)
	{
		model.addAttribute("subCategory", subCategoryService.getSubCategoryById(subCategoryId));
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "subcategories";
	}
	
	@RequestMapping("/deleteSubCategoryById-{subCategoryId}")
	public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId)
	{
		subCategoryService.deleteSubCategory(subCategoryId);
		return "redirect:/subCategoryPage";
	}
}
