package com.mobiles.dao;

import java.util.List;

import com.mobiles.model.Product;

public interface ProductDAO 
{
	public void addProduct(Product product);
	
	public List<Product> fetchAllProduct();
	
	public Product getProductById(int productId);
	
	public void deleteProduct(int productId);
}
