package com.mobiles.controller;

import java.security.Principal;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mobiles.model.CartItems;
import com.mobiles.model.Product;
import com.mobiles.service.CartService;
import com.mobiles.service.ProductService;
import com.mobiles.service.UserService;

@Controller
public class CartsController 
{
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/addtocart-{productId}")
	public String addToCart(@PathVariable("productId") int productId , Principal p, @ModelAttribute("cartItems")CartItems cartItems)
	{
		String username = p.getName();
		int userId = userService.getUserByusername(username).getUserId();

		cartItems.setUserId(userId);
		cartItems.setCartId(userId);

		String prdName = productService.getProductById(productId).getProductName();
		int price = productService.getProductById(productId).getProductPrice();

		cartItems.setProductId(productId);
		cartItems.setProductName(prdName);
		cartItems.setRate(price);
		cartItems.setQuantity(1);
		cartItems.setAmount(cartItems.getQuantity() * cartItems.getRate());

		Date d= new Date();
		cartItems.setDateOrdered(d);
		
		cartItems.setFlag("N");

		cartService.addToCart(cartItems);
		
		return "redirect:/userCartList";
	}
	
	@RequestMapping(value = "/userCartList")
	public String getCartList(Principal p ,Model model)
	{		
		int userId = userService.getUserByusername(p.getName()).getUserId();
		model.addAttribute("cartListByJson", cartService.fetchCartItemsByuserIdByJson(userId));
				
		return "cartlist";
	}
	
	@RequestMapping("/deleteFromCart-{cartItemId}")
	public String deleteFromCart(@PathVariable("cartItemId")int cartItemId,Principal p, Model model)
	{
			cartService.deleteItem(cartItemId);
			model.addAttribute("commonmessage", "Removed From Cart");
			return "redirect:/userCartList";
	}
	
	
	@RequestMapping("/checkoutfromcart-{cartItemId}")
	public String checkoutFromCart(@PathVariable("cartItemId")int cartItemId,Principal p, Model model)
	{
			CartItems thisItem = cartService.fetchOneCartItem(cartItemId);
			
			if(thisItem.getFlag().equals("N"))
			{
			Product product = productService.getProductById(thisItem.getProductId());
			
			product.setProductStock(product.getProductStock() - thisItem.getQuantity());
			productService.addProduct(product);
			
			thisItem.setFlag("Y");
			cartService.addToCart(thisItem);
			
			model.addAttribute("commonmessage", "Removed From Cart");
			return "redirect:/userCartList";
			}
			
			model.addAttribute("commonmessage", "Operation Interrupted");
			return "redirect:/userCartList";
	}
}
