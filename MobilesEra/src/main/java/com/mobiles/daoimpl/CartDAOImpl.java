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


	public void deleteItem(int cartItemId) {
		CartItems cartItem = fetchOneCartItem(cartItemId);
		sessionFactory.getCurrentSession().delete(cartItem);
	}


	public CartItems fetchOneCartItem(int cartItemId) {
		List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItems where cartItemId="+cartItemId).getResultList();
		CartItems cartItems = cartList.get(0);
		return cartItems;
	}

	public void placeOrder(int cartItemId)
	{
		sessionFactory.getCurrentSession().createQuery("update CartItems set flag='Y' where cartItemId="+cartItemId);
	}

	public void minusProductQuantity(int productId) 
	{
		sessionFactory.getCurrentSession().createQuery("update Product set productstock=productstock-1 where productId=" +productId);
	}

	public void addProductQuantity(int productId) 
	{
		sessionFactory.getCurrentSession().createQuery("update Product set productstock=productstock+1 where productId=" +productId);
	}
}