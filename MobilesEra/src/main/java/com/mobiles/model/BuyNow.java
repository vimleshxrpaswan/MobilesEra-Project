package com.mobiles.model;

import java.io.Serializable;

public class BuyNow implements Serializable 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private CartItems cartItems;
	private User user;
	private ShippingAddress shippingAddress;
	private BillingAddress billingAddress;
	
	public CartItems getCartItems() {
		return cartItems;
	}
	public void setCartItems(CartItems cartItems) {
		this.cartItems = cartItems;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	
	
}
