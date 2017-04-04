package com.mobiles.dao;

import com.mobiles.model.WishList;

public interface WishListDAO 
{
	public void addProductToWishList(WishList wishList);
	
	public void deleteProductFromWishList(int wishId);
	
	public WishList getWishItemById(int wishId);
	
	public String getWishList(int userId);
}
