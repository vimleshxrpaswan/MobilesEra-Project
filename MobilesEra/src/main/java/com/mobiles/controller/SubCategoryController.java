package com.mobiles.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		
		model.addAttribute("btnLabel","Add SubCategory");
		return "subcategories";
	}
	
	
	@RequestMapping("/addSubCategory")
	public String addSubCategory(@Valid @ModelAttribute("subCategory")SubCategory subCategory,BindingResult result,Model model )
	{
		if(result.hasErrors())
		{
			model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
			model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
			model.addAttribute("categoryList", categoryService.fetchAllCategories());
			
			model.addAttribute("btnLabel","Retry");
			return "subcategories";
		}
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/subCategoryPage";
	}
	
	@RequestMapping("/updateSubCategoryById-{subCategoryId}")
	public String updateSubCategory(Model model,@PathVariable("subCategoryId") int subCategoryId)
	{
		model.addAttribute("subCategory", subCategoryService.getSubCategoryById(subCategoryId));
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		
		model.addAttribute("btnLabel","Update SubCategory");
		return "subcategories";
	}
	
	@RequestMapping("/deleteSubCategoryById-{subCategoryId}")
	public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId)
	{
		subCategoryService.deleteSubCategory(subCategoryId);
		return "redirect:/subCategoryPage";
	}
}
