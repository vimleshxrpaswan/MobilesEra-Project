package com.mobiles.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.model.Supplier;
import com.mobiles.service.SupplierService;

@Controller
public class SupplierController 
{
	@Autowired
	SupplierService supplierService;
	
	@RequestMapping("/supplierPage")
	public String getSupplierPage(Model model)
	{
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		return "suppliers";
	}
	
	@RequestMapping("/addSupplier")
	public String addSupplier(@ModelAttribute("supplier")Supplier supplier)
	{
		supplierService.addSupplier(supplier);
		return "redirect:/supplierPage";
	}
	
	@RequestMapping("/updateSupplierById-{supplierId}")
	public String updateSupplier(Model model,@PathVariable("supplierId") int supplierId)
	{
		model.addAttribute("supplier", supplierService.getSupplierById(supplierId));
		return "suppliers";
	}
	
	@RequestMapping("/deleteSupplierById-{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") int supplierId)
	{
		supplierService.deleteSupplier(supplierId);
		return "redirect:/supplierPage";
	}
}
