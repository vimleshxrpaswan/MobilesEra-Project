package com.mobiles.dao;

import java.util.List;

import com.mobiles.model.SubCategory;


public interface SubCategoryDAO 
{
	public void addSubCategory(SubCategory subCategory);
	
	public List<SubCategory> fetchAllSubCategories();
	
	public String fetchAllSubCategoriesByJson();
	
	public SubCategory getSubCategoryById(int subCategoryId);
	
	public void deleteSubCategory(int subCategoryId);
}
