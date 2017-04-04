package com.mobiles.dao;

import com.mobiles.model.CartItems;


public interface CartDAO 
{
	public void addToCart(CartItems cartItems);
	
	public String fetchCartItemsByuserIdByJson(int userId);
	
	public void deleteItem(int cartItemId);
	
	public CartItems fetchOneCartItem(int cartItemId); 
}
