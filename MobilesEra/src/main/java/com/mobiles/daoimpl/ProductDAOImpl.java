package com.mobiles.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.mobiles.dao.ProductDAO;
import com.mobiles.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}

	public List<Product> fetchAllProduct() {
		List<Product> productList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return productList;
	}

	public Product getProductById(int productId) {
		List<Product> getList = sessionFactory.getCurrentSession().createQuery("from Product where productId = "+productId).getResultList();
		return getList.get(0);
	}

	public void deleteProduct(int productId) {
		sessionFactory.getCurrentSession().delete(getProductById(productId));
		
	}

	public String fetchAllProductByJson() {
		List<Product> productList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(productList);		
		return list;
	}

}
