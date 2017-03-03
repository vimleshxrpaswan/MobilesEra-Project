package com.mobiles.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.model.Product;
import com.mobiles.model.SubCategory;
import com.mobiles.service.BrandService;
import com.mobiles.service.CategoryService;
import com.mobiles.service.ProductService;
import com.mobiles.service.SubCategoryService;
import com.mobiles.service.SupplierService;

@Controller
public class ProductController 
{
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired	
	SubCategoryService subCategoryService;
	
	@Autowired
	SupplierService supplierService;
	
	@Autowired
	BrandService brandService;
	
	@RequestMapping("/productPage")
	public String getProductPage(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("productList", productService.fetchAllProduct());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		return "admin-productpage";
	}
	
	@RequestMapping("/addProduct")	
	public String addProduct(@ModelAttribute("product")Product product)
	{
		productService.addProduct(product);
		return "redirect:/productPage";
	}
	
	@RequestMapping("/updateProductById-{productId}")
	public String updateProduct(Model model,@PathVariable("productId") int productId)
	{
		model.addAttribute("product", productService.getProductById(productId));
		model.addAttribute("productList", productService.fetchAllProduct());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		return "admin-productpage";
	}
	
	@RequestMapping("/deleteProductById-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		productService.deleteProduct(productId);
		return "redirect:/productPage";
	}
}
