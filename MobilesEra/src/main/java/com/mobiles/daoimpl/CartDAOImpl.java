package com.mobiles.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
