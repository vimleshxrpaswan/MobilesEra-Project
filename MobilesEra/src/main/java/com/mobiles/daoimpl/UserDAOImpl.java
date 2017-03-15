package com.mobiles.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobiles.dao.UserDAO;
import com.mobiles.model.Cart;
import com.mobiles.model.User;

@Repository
public class UserDAOImpl implements UserDAO 
{	
	@Autowired
	private SessionFactory sessionFactory; 
	
	public void addUser(User user) 
	{
		Session session = sessionFactory.getCurrentSession();
		
		user.setEnabled(true);
		user.setRole("ROLE_USER");

		session.saveOrUpdate(user);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId()); 
		cart.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
		
		session.saveOrUpdate(user);
		
		
	}
	
}
