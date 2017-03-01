package com.mobiles.dao;

import java.util.List;

import com.mobiles.model.Category;

public interface CategoryDAO 
{
	public void addCategory(Category category);
	
	public List<Category> fetchAllCategories();
	
	public Category getCategoryById(int categoryId);
	
	public void deleteCategory(int categoryId);
}
