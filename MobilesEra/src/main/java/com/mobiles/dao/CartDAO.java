package com.mobiles.dao;

import com.mobiles.model.CartItems;


public interface CartDAO 
{
	public void addToCart(CartItems cartItems);
	
	public String fetchCartItemsByuserIdByJson(int userId);
}
