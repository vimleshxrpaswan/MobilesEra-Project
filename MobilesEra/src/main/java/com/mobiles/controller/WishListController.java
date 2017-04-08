package com.mobiles.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.model.Product;
import com.mobiles.model.WishList;
import com.mobiles.service.CategoryService;
import com.mobiles.service.ProductService;
import com.mobiles.service.UserService;
import com.mobiles.service.WishListService;

@Controller
public class WishListController 
{
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private WishListService wishListService;
	
	@RequestMapping("/userWishList")
	public String getWishes(Model model, Principal p)
	{
		int userId = userService.getUserByusername(p.getName()).getUserId();		
		model.addAttribute("wishListByJSON", wishListService.getWishList(userId));
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		
		return "user-wishlist";
	}
	
	@RequestMapping("/addtowishlist-{productId}")
	public String addWishes(@PathVariable("productId")int productId,Principal p)
	{
		int userId = userService.getUserByusername(p.getName()).getUserId();	
		Product product = productService.getProductById(productId);
		WishList wish = new WishList();

		wish.setUserId(userId);
		wish.setProductId(productId);
		wish.setProductPrice(product.getProductPrice());
		wish.setProductDiscount(product.getProductDiscount());
		wish.setProductName(product.getProductName());

		wishListService.addProductToWishList(wish);;
		
		return "redirect:/userWishList";
	}
	
	@RequestMapping("/deleteFromWishList-{wishId}")
	public String deleteWishItemfromWishList(@PathVariable("wishId")int wishId)
	{
		wishListService.deleteProductFromWishList(wishId);
		
		return "redirect:/userWishList";
	}
}
