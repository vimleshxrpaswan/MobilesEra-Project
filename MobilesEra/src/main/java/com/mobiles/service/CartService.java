package com.mobiles.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobiles.daoimpl.CartDAOImpl;
import com.mobiles.model.CartItems;

@Service
@Transactional
public class CartService 
{
	@Autowired
	CartDAOImpl cartDAOImpl;
	
	public void addToCart(CartItems cartItems)
	{
		cartDAOImpl.addToCart(cartItems);
	}
	
	public String fetchCartItemsByuserIdByJson(int userId)
	{
		return cartDAOImpl.fetchCartItemsByuserIdByJson(userId);
	}
	
	public void deleteItem(int cartItemId)
	{
		cartDAOImpl.deleteItem(cartItemId);
	}
	
	public CartItems fetchOneCartItem(int cartItemId)
	{
		return cartDAOImpl.fetchOneCartItem(cartItemId);
	}
}
