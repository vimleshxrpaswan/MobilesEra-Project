package com.mobiles.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.mobiles.dao.CartDAO;
import com.mobiles.model.CartItems;

@Repository
public class CartDAOImpl implements CartDAO 
{
	@Autowired
	SessionFactory sessionFactory; 

	public void addToCart(CartItems cartItems) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cartItems);	
	}


	public String fetchCartItemsByuserIdByJson(int userId) {
		List<CartItems> cartitemlist = sessionFactory.getCurrentSession().createQuery("from CartItems where userId = "+userId+" and flag = 'N'").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String cilist = g.toJson(cartitemlist);
		return cilist;
	}

}
