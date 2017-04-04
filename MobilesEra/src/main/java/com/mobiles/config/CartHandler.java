package com.mobiles.config;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.mobiles.model.BillingAddress;
import com.mobiles.model.ShippingAddress;


@Component
public class CartHandler 
{
	 public String validateShippingDetails(ShippingAddress shippingAddress,MessageContext messageContext){
			String status = "success";
			
			if(shippingAddress.getsName().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"sName").defaultText("please fill the name of person who will recieve the Product").build());
				status = "failure";
			}
			if(shippingAddress.getsPrefix().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"sPrefix").defaultText("please fill your address line 1").build());
				status = "failure";
			}
			if(shippingAddress.getsCity().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"sCity").defaultText("please fill your city").build());
				status = "failure";
			}
			if(shippingAddress.getsDistrict().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"sDistrict").defaultText("please fill your district").build());
				status = "failure";
			}
			
			
			if(shippingAddress.getsLandmark().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"sLandmark").defaultText("please fill your landmark").build());
				status = "failure";
			}
			if(shippingAddress.getsState().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"sState").defaultText("please fill your state").build());
				status = "failure";
			}
			return status;
		}
	 
	 public String validateBillingDetails(BillingAddress billingAddress,MessageContext messageContext){
			String status = "success";
			
			if(billingAddress.getBillAddName().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"BillAddName").defaultText("please fill the name of person who will pay for product").build());
				status = "failure";
			}
			if(billingAddress.getbPrefix().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"bPrefix").defaultText("please fill your address line 1").build());
				status = "failure";
			}
			if(billingAddress.getbCity().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"bCity").defaultText("please fill your city").build());
				status = "failure";
			}
			if(billingAddress.getbDistrict().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"bDistrict").defaultText("please fill your district").build());
				status = "failure";
			}
			if(billingAddress.getbState().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"bState").defaultText("please fill your State").build());
				status = "failure";
			}
			
			if(billingAddress.getbLandmark().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"bLandmark").defaultText("please fill your landmark").build());
				status = "failure";
			}
			return status;
		}
}
