package com.mobiles.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobiles.daoimpl.WishListDAOImpl;
import com.mobiles.model.WishList;

@Service
@Transactional
public class WishListService 
{
	@Autowired
	private WishListDAOImpl wishListDAOImpl;
	
	public void addProductToWishList(WishList wishList)
	{
		wishListDAOImpl.addProductToWishList(wishList);		
	}
	
	public void deleteProductFromWishList(int wishId)
	{
		wishListDAOImpl.deleteProductFromWishList(wishId);
	}
	
	public WishList getWishItemById(int wishId)
	{
		return wishListDAOImpl.getWishItemById(wishId); 
	}
	
	public String getWishList(int userId)
	{
		return wishListDAOImpl.getWishList(userId);
	}
}
