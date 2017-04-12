package com.mobiles.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.model.Supplier;
import com.mobiles.service.CategoryService;
import com.mobiles.service.SupplierService;

@Controller
public class SupplierController 
{
	@Autowired
	SupplierService supplierService;
	
	@Autowired
	CategoryService categoryService; 
	
	@RequestMapping("/supplierPage")
	public String getSupplierPage(Model model)
	{
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("btnLabel","Add Supplier");
		return "suppliers";
	}
	
	@RequestMapping("/addSupplier")
	public String addSupplier(@Valid @ModelAttribute("supplier")Supplier supplier,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{
			model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
			model.addAttribute("btnLabel","Retry");
			return "suppliers";
		}
		supplierService.addSupplier(supplier);
		return "redirect:/supplierPage";
	}
	
	@RequestMapping("/updateSupplierById-{supplierId}")
	public String updateSupplier(Model model,@PathVariable("supplierId") int supplierId)
	{
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("supplier", supplierService.getSupplierById(supplierId));
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("btnLabel","update Supplier");
		return "suppliers";
	}
	
	@RequestMapping("/deleteSupplierById-{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") int supplierId)
	{
		supplierService.deleteSupplier(supplierId);
		return "redirect:/supplierPage";
	}
}
