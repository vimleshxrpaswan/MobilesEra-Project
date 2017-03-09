package com.mobiles.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mobiles.model.Product;
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
	
	private String Data_Folder = "D:\\NiitProject\\WorkSpace\\MobilesEra\\src\\main\\webapp\\resources\\productImages\\";
	
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
	public String addProduct(@Valid @ModelAttribute("product")Product product,@RequestParam("productImage")MultipartFile productImage,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{
			model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
			model.addAttribute("categoryList", categoryService.fetchAllCategories());
			model.addAttribute("supplierList", supplierService.fetchAllSupplier());
			model.addAttribute("brandList", brandService.fetchAllBrand());
			return "admin-productpage";
		}
		
		productService.addProduct(product);
		
		if(!productImage.isEmpty()){
			try
			{
				byte[] bytes = productImage.getBytes();
				
				File directory = new File(Data_Folder + File.separator);
						if(!directory.exists())
						{
							directory.mkdirs();
						}
						
						File imageFile = new File(directory.getAbsolutePath() + File.separator + "productImage-" + product.getProductId() + ".jpg");
						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
						stream.write(bytes);
						stream.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
				model.addAttribute("fmessage","Image Upload Failed.try again");
			}
			model.addAttribute("filemessage","Image Upload Successful");
		}
		else
		{
			model.addAttribute("filemessage","Image file is required");
		}
		
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
