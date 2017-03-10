package com.mobiles.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.mobiles.dao.SubCategoryDAO;
import com.mobiles.model.SubCategory;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	public void addSubCategory(SubCategory subCategory) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);
	}

	public List<SubCategory> fetchAllSubCategories() 
	{
		List<SubCategory> subCategoryList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		return subCategoryList;
	}

	public SubCategory getSubCategoryById(int subCategoryId) {
		List<SubCategory> getList = sessionFactory.getCurrentSession().createQuery("from SubCategory where subCategoryId = "+subCategoryId).getResultList();
		return getList.get(0);
	}

	public void deleteSubCategory(int subCategoryId) 
	{
		sessionFactory.getCurrentSession().delete(getSubCategoryById(subCategoryId));
		
	}

	public String fetchAllSubCategoriesByJson() {
		List<SubCategory> subCategoryList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		Gson g = new Gson();
		String list = g.toJson(subCategoryList);
		return list;
	}
	
}
