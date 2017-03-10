package com.mobiles.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobiles.daoimpl.ProductDAOImpl;
import com.mobiles.model.Product;

@Service
@Transactional
public class ProductService 
{
	@Autowired
	ProductDAOImpl productDAOImpl;
	
	public void addProduct(Product product)
	{
		productDAOImpl.addProduct(product);
	}
	
	public String fetchAllProductByJson()
	{
		return productDAOImpl.fetchAllProductByJson();
	}
	
	public List<Product> fetchAllProduct()
	{
		return productDAOImpl.fetchAllProduct();
	}
	
	public Product getProductById(int productId)
	{
		return productDAOImpl.getProductById(productId);
	}
	
	public void deleteProduct(int productId)
	{
		productDAOImpl.deleteProduct(productId);
	}
}
