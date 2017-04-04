package com.mobiles.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.mobiles.dao.WishListDAO;
import com.mobiles.model.WishList;

@Repository
public class WishListDAOImpl implements WishListDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	public void addProductToWishList(WishList wishList) {
		List<WishList> wishItem = sessionFactory.getCurrentSession().createQuery("from WishList where productId="+wishList.getProductId()+" and userId="+wishList.getUserId()).getResultList();
		if(wishItem.isEmpty())
		{
			sessionFactory.getCurrentSession().saveOrUpdate(wishList);
		}
	}

	public void deleteProductFromWishList(int wishId) {
		sessionFactory.getCurrentSession().delete(getWishItemById(wishId));
		
	}

	public WishList getWishItemById(int wishId) {
		List<WishList> wishItem = sessionFactory.getCurrentSession().createQuery("from WishList where wishId="+wishId).getResultList();
		return wishItem.get(0);
	}

	public String getWishList(int userId) {
		List<WishList> wishItem = sessionFactory.getCurrentSession().createQuery("from WishList where userId="+userId).getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String wishList = g.toJson(wishItem);
		return wishList;
	}
	
}
