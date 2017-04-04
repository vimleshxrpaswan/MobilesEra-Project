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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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
		
		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		model.addAttribute("btnLabel","Add Product");
		return "admin-productpage";
	}
	
	@RequestMapping("/addProduct")	
	public String addProduct(@Valid @ModelAttribute("product")Product product,BindingResult result,@RequestParam("productImage")MultipartFile productImage,Model model)
	{
		if(result.hasErrors())
		{
			model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
			model.addAttribute("categoryList", categoryService.fetchAllCategories());
			model.addAttribute("supplierList", supplierService.fetchAllSupplier());
			model.addAttribute("brandList", brandService.fetchAllBrand());
			model.addAttribute("productListByJson", productService.fetchAllProductByJson());
			model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
			model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
			model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
			model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
			model.addAttribute("btnLabel","Retry");
			return "admin-productpage";
		}
		else
		{
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
		
		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		model.addAttribute("btnLabel","Update Product");
		return "admin-productpage";
	}
	
	@RequestMapping("/deleteProductById-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		productService.deleteProduct(productId);
		return "redirect:/productPage";
	}
	
	@RequestMapping("/viewProductById-{productId}")
	public String viewProduct(Model model,@PathVariable("productId") int productId)
	{
		Product p = productService.getProductById(productId);
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String productData= g.toJson(p);
		model.addAttribute("productData", productData);
				
		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		model.addAttribute("btnLabel","Update Product");
		return "viewproductpage";
	}
	
	@RequestMapping("/userProductPage")
	public String getProduct(Model model)
	{		
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		return "user-productpage";
	}
	
	@RequestMapping("/productBy-{brandId}")
	public String getProductByBrand(Model model ,@PathVariable("brandId") int brandId)
	{	
		model.addAttribute("productlistbybrand", productService.fetchProductByBrand(brandId));
		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		return "user-productpage";		
	}
}
