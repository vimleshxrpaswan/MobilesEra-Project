package com.mobiles.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.model.Brand;
import com.mobiles.service.BrandService;

@Controller
public class BrandController 
{
	@Autowired
	BrandService brandService;
	
	@RequestMapping("/brandPage")
	public String getBrandPage(Model model)
	{
		model.addAttribute("brand", new Brand());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		return "brands";
	}
	
	@RequestMapping("/addBrand")
	public String addBrand(@ModelAttribute("brand")Brand brand)
	{
		brandService.addBrand(brand);
		return "redirect:/brandPage";
	}
	
	@RequestMapping("/updateBrandById-{brandId}")
	public String updateBrand(Model model,@PathVariable("brandId")int brandId)
	{
		model.addAttribute("brand", brandService.getBrandById(brandId));
		return "brands";
	}
	
	@RequestMapping("/deleteBrandById-{brandId}")
	public String deleteBrand(@PathVariable("brandId")int brandId)
	{
		brandService.deleteBrand(brandId);
		return "redirect:/brandPage";
	}
}
