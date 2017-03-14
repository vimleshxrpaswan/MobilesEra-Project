package com.mobiles.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.mobiles.dao.BrandDAO;
import com.mobiles.model.Brand;

@Repository
public class BrandDAOImpl implements BrandDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	public void addBrand(Brand brand) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(brand);
	}

	
	public List<Brand> fetchAllBrand() 
	{
		List<Brand> brandList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		return brandList;
	}

	
	public Brand getBrandById(int brandId) 
	{
		List<Brand> getList = sessionFactory.getCurrentSession().createQuery("from Brand where brandId = "+brandId).getResultList();
		return getList.get(0);
	}

	public void deleteBrand(int brandId) 
	{
		sessionFactory.getCurrentSession().delete(getBrandById(brandId));
	}


	public String fetchAllBrandByJson() {
		List<Brand> brandList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(brandList);
		return list;
	}

}
