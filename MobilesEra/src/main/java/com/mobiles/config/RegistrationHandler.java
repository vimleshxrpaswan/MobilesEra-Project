package com.mobiles.config;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.mobiles.model.BillingAddress;
import com.mobiles.model.ShippingAddress;
import com.mobiles.model.User;
import com.mobiles.service.UserService;

@Component
public class RegistrationHandler  
{	
	@Autowired
	public BillingAddress billingAddress;
	
	@Autowired
	public ShippingAddress shippingAddress;
	
	@Autowired
	public UserService userService;
	
	public User initFlow()
	{
		return new User();
	}
	

	public String validateDetails(User user,MessageContext messageContext)
	{
		List<User> userlist = userService.fetchAllUser();
		
		String status = "success";
	
	if(user.getUsername().isEmpty() || (!user.getUsername().contains("@") && !user.getUsername().isEmpty())){
		if(!user.getUsername().contains("@") && !user.getUsername().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("username").defaultText(" Format Invalid. Should Contain @").build());
		}
		else
		{
			messageContext.addMessage(new MessageBuilder().error().source("username").defaultText(" Please Fill Username").build());
		}
		
		
		status = "failure";
	}
	else if(!user.getUsername().isEmpty())
	{
		for(User k : userlist)
		{
			if(k.getUsername().equals(user.getUsername()))
			{
				messageContext.addMessage(new MessageBuilder().error().source("username").defaultText(" It Already Exists. Please Try Another").build());
				status = "failure";
				break;
			}
			
		}
	}
	if(user.getContactNo().isEmpty() || (user.getContactNo().length()!=10 && !user.getContactNo().isEmpty()) ){
		if(user.getContactNo().length()!=10 && !user.getContactNo().isEmpty() )
		{
			messageContext.addMessage(new MessageBuilder().error().source("contactNo").defaultText(" It Should be 10 digits").build());
		}
		else
		{
			messageContext.addMessage(new MessageBuilder().error().source("contactNo").defaultText(" Please Fill Contact/Mobile No").build());
		}
		status = "failure";
	}
	if(user.getFname().isEmpty()){
		messageContext.addMessage(new MessageBuilder().error().source("fname").defaultText(" Please Fill First Name").build());
		status = "failure";
	}
	if(user.getLname().isEmpty()){
		messageContext.addMessage(new MessageBuilder().error().source("lname").defaultText(" Please Fill Last Name").build());
		status = "failure";
	}
	if(user.getPassword().isEmpty()|| (user.getPassword().length()<6 && !user.getPassword().isEmpty())){
		if(user.getPassword().length()<6 && !user.getPassword().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText(" It Should Be Minimum 6 Characters").build());
		}
		else
		{
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("	Please Fill Password").build());
		}
		
		status = "failure";
	}
	return status;
}

	
   public String saveOrUpdateUser(User user, BillingAddress billingAddress, ShippingAddress shippingAddress,MessageContext messageContext){
		
		try{
		userService.addUser(user);

		user.setShippingAddress(shippingAddress);
		user.setBillingAddress(billingAddress);
		
		
		shippingAddress.setUser(user);				
		this.shippingAddress.setUser(user);		
		
		billingAddress.setUser(user);
		this.billingAddress.setUser(user);
		
		userService.addShippingAddress(shippingAddress);
		userService.addBillingAddress(billingAddress);
		
		}
		catch (Exception e) 
		{			
			messageContext.addMessage(new MessageBuilder().error().defaultText("Server Down! Try again Later.").build());
			return "failure";
		}
				
		return "success";
		
	}

	

	public String checkDuplicate(User user,MessageContext messageContext){
		String status="success";
		List<User> userList = userService.fetchAllUser();
		for(User k:userList){
			if(k.getUsername().equals(user.getUsername())){
				messageContext.addMessage(new MessageBuilder().error().source(
						"username").defaultText("Username already exists").build());
				
				status = "failure";
			}			
						
		}
		return status;
		}

	
	
	public String addShippingAddress(User user, ShippingAddress shippingAddress)
	{
		this.shippingAddress.setsName(shippingAddress.getsName());
		this.shippingAddress.setsPrefix(shippingAddress.getsPrefix());
		this.shippingAddress.setsStreet(shippingAddress.getsStreet());
		this.shippingAddress.setsCity(shippingAddress.getsCity());
		this.shippingAddress.setsDistrict(shippingAddress.getsDistrict());
		this.shippingAddress.setsState(shippingAddress.getsState());
		this.shippingAddress.setsLandmark(shippingAddress.getsLandmark());
		this.shippingAddress.setsPIN(shippingAddress.getsPIN());
		this.shippingAddress.setUserId(shippingAddress.getUserId()); 
		
		return "success";
	
	}

	public String addBillingAddress(User user, BillingAddress billingAddress)
	{
		this.billingAddress.setBillAddName(billingAddress.getBillAddName());
		this.billingAddress.setbPrefix(billingAddress.getbPrefix());
		this.billingAddress.setbStreet(billingAddress.getbStreet());
		this.billingAddress.setbCity(billingAddress.getbCity());
		this.billingAddress.setbDistrict(billingAddress.getbDistrict());
		this.billingAddress.setbState(billingAddress.getbState());
		this.billingAddress.setbLandmark(billingAddress.getbLandmark());
		this.billingAddress.setbPIN(billingAddress.getbPIN());
		this.billingAddress.setUserId(billingAddress.getUserId());		
		
		return "success";
	
	}

}
	