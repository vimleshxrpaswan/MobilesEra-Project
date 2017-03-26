package com.mobiles.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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

	public User getUserId(int userId) {
		List<User> u = sessionFactory.getCurrentSession().createQuery("from User where userId = "+userId).getResultList();
		return u.get(0);
	}

	public User getUserByusername(String username) {
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where username = "+"'"+username+"'").getResultList();		
		return userList.get(0);
	}

	public String fetchAllUserByJson() {
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String ulist = g.toJson(userList);
		return ulist;
	}


}
