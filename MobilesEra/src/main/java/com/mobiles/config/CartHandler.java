package com.mobiles.config;

import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.webflow.mvc.servlet.AbstractFlowHandler;

import com.mobiles.model.BillingAddress;
import com.mobiles.model.CartItems;
import com.mobiles.model.Product;
import com.mobiles.model.ShippingAddress;
import com.mobiles.model.User;
import com.mobiles.service.CartService;
import com.mobiles.service.ProductService;
import com.mobiles.service.UserService;

@Component
public class CartHandler extends AbstractFlowHandler
{
	private String status;
	
	private String username; 
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private ProductService productService;
	
	public User initFlow() 
	{
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) 
		{
		username = ((UserDetails)principal).getUsername();
		} 
		else
		{
		username = principal.toString();
		}
			User user = userService.getUserByusername(username);
			return user;		
	 }
	
	public BillingAddress initBill(User user)
	{
		BillingAddress billAddress = userService.getBillingAddressById(user.getUserId()); 
		return billAddress;
	}
	
	public ShippingAddress initShip(User user)
	{
		ShippingAddress shipAddressess = userService.getShippingAddressById(user.getUserId());
		return shipAddressess;
	}
	
	public List<CartItems> initCart(User user)
	{
		return cartService.fetchCartItemsByuserId(user.getUserId());
	}
	
	public String validateShippingAddress(ShippingAddress shipAddress,MessageContext messageContext)
	{
		status="success";
		
		Pattern pattern = Pattern.compile("^[a-zA-Z,\\s]*$");

		if(shipAddress.getsName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Required").build());
			status = "failure";
		}
		else
		{
			Pattern pat = Pattern.compile("^[a-zA-Z]{3,12}$");
	        Matcher mather = pat.matcher(shipAddress.getsName());
	        if(!mather.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Cannot Have Number & Symbols.3-12 Characters Long.").build());
			status = "failure";
	        }
		}
		
		if(shipAddress.getsPrefix().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sPrefix").defaultText("Required").build());
			status = "failure";
		}
		
		if(shipAddress.getsLandmark().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sLandmark").defaultText("Optional").build());
		}
		
		if(shipAddress.getsStreet().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sStreet").defaultText("Required").build());
			status = "failure";
		}
		
		if(shipAddress.getsCity().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sCity").defaultText("Required").build());
			status = "failure";
		}
		else
		{
	        Matcher mat1 = pattern.matcher(shipAddress.getsCity());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Cannot Have Number & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(shipAddress.getsState().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("sState").defaultText("Required").build());
			status = "failure";
		}
		else
		{
	        java.util.regex.Matcher mat1 = pattern.matcher(shipAddress.getsState());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("sName").defaultText("Cannot Have Number & Symbols.").build());
			status = "failure";
	        }
		}					
		
		if(shipAddress.getsPIN()==0)
		{
			messageContext.addMessage(new MessageBuilder().error().source("sPIN").defaultText("Required").build());
			status = "failure";
		}
		else
		{
			String temp = shipAddress.getsPIN()+"";
			Pattern pba = Pattern.compile("^[0-9]{6}$");
	        Matcher mfn = pba.matcher(temp);
	        boolean pinflag =  mfn.matches();
			if(!pinflag)
			{
				messageContext.addMessage(new MessageBuilder().error().source("sPIN").defaultText("Incorrect PIN").build());
				status = "failure";
			}
		}
		
		if(status.equals("success"))
		{
			try
			{
			userService.addShippingAddress(shipAddress);
			}
			catch(Exception e)
			{
				return "failure";
			}
		}
		
		return status;
		}
	
	public String validateBillingAddress(BillingAddress billAddress,MessageContext messageContext)
	{
		status="success";
		Pattern patt = Pattern.compile("^[a-zA-Z,\\s]*$");
		
		if(billAddress.getBillAddName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Required").build());
			status = "failure";
		}
		else
		{
			Pattern pat = Pattern.compile("^[a-zA-Z]{3,12}$");
	        Matcher mat = pat.matcher(billAddress.getBillAddName());
	        if(!mat.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Cannot Have Numbers & Symbols.3-12 Characters Long.").build());
			status = "failure";
	        }
		}
		
		if(billAddress.getbPrefix().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bPrefix").defaultText("Required").build());
			status = "failure";
		}
		
		if(billAddress.getbLandmark().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bLandmark").defaultText("Optional").build());
		}
		
		if(billAddress.getbStreet().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bStreet").defaultText("Required").build());
			status = "failure";
		}
		
		if(billAddress.getbCity().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bCity").defaultText("Required").build());
			status = "failure";
		}
		else
		{
		 	Matcher mat1 = patt.matcher(billAddress.getbCity());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Cannot Have Numbers & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(billAddress.getbState().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("bState").defaultText("Required").build());
			status = "failure";
		}
		else
		{
		 	Matcher mat1 = patt.matcher(billAddress.getbState());
	        if(!mat1.matches())
	        {
			messageContext.addMessage(new MessageBuilder().error().source("bName").defaultText("Cannot Have Numbers & Symbols.").build());
			status = "failure";
	        }
		}
		
		if(billAddress.getbPIN()==0)
		{
			messageContext.addMessage(new MessageBuilder().error().source("bPIN").defaultText("Required").build());
			status = "failure";
		}
		else
		{
			String temp = billAddress.getbPIN()+"";
			Pattern pba = Pattern.compile("^[0-9]{6}$");
	        Matcher mfn = pba.matcher(temp);
	        boolean pinflag =  mfn.matches();
			if(!pinflag)
			{
				messageContext.addMessage(new MessageBuilder().error().source("bPIN").defaultText("Incorrect PIN").build());
				status = "failure";
			}
		}
		
		if(status.equals("success"))
		{
			try
			{
			userService.addBillingAddress(billAddress);
			}
			catch(Exception e)
			{
				return "failure";
			}
		}
		
		return status;
	}
	
	public String assignBillingAddress(ShippingAddress shipaddress,BillingAddress billaddress)
	{
	status="success";
	
	billaddress.setBillAddName(shipaddress.getsName());
	billaddress.setbPrefix(shipaddress.getsPrefix());
	billaddress.setbLandmark(shipaddress.getsLandmark());
	billaddress.setbStreet(shipaddress.getsStreet());
	billaddress.setbState(shipaddress.getsState());
	billaddress.setbCity(shipaddress.getsCity());	
	billaddress.setbPIN(shipaddress.getsPIN());
	
	return status;
	}
	
	public String checkoutCartItems(User user)
	{
		status="success";
				
		try
		{
			
			for(CartItems ci:cartService.fetchCartItemsByuserId(user.getUserId()))
			{
				CartItems thisItem = cartService.fetchOneCartItem(ci.getCartItemId());
				
				if(thisItem.getFlag().equals("N"))
				{
				Product product = productService.getProductById(thisItem.getProductId());
				
				if(product.getProductStock() > thisItem.getQuantity())
				{
				product.setProductStock(product.getProductStock() - thisItem.getQuantity());
				productService.addProduct(product);
				
				thisItem.setDateOrdered(new Date());
				thisItem.setFlag("Y");
				cartService.addToCart(thisItem);
				}
				
				}
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return "failure";
		}
		
		return status;
	}
	
//	BELOW CODES ARE ONLY FOR BUY NOW
	
	public CartItems initBuyNowCart(User user, int productId)
	{
		Product product = productService.getProductById(productId);		
		CartItems cartItems = new CartItems();
		
		Date dateOrdered = new Date(); 
		
		cartItems.setUserId(user.getUserId());
		/*cartItems.setCartId(user.getCart().getCartId());*/
		cartItems.setProductId(product.getProductId());
		cartItems.setProductName(product.getProductName());
		cartItems.setRate(product.getProductPrice());
		cartItems.setDiscount(product.getProductDiscount());
		/*cartItems.setAmount(product.getProductAmount());*/
		cartItems.setFlag("Y");
		cartItems.setQuantity(1);
		cartItems.setDateOrdered(dateOrdered);
		
		return cartItems;
	}
	
	public String checkoutBuyNowItem(CartItems thisCartItem)
	{
		status = "success";
		
		try
		{
			System.out.println("******************************************************************************************************************entered Checkout");

				Product product = productService.getProductById(thisCartItem.getProductId());
				
				if(product.getProductStock() >= 1)
				{
				product.setProductStock(product.getProductStock() - 1);
				productService.addProduct(product);
				
				System.out.println("******************************************************************************************************************PRODUCT STOCK REDUCED" + product.getProductStock());

				cartService.addToCart(thisCartItem);
				
				System.out.println("******************************************************************************************************************added cart items" + product.getProductStock());

				}
				else
				{
					status= "failure";
					System.out.println("******************************************************************************************************************not enough stock" + product.getProductStock());

				}
			
		}
		catch(Exception e)
		{
			System.out.println("******************************************************************************************************************exception occured");

			e.printStackTrace();
			return "failure";
		}
		
		return status;
	}
	
}