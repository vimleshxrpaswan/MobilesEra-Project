package com.mobiles.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.mobiles.dao.SupplierDAO;
import com.mobiles.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	public void addSupplier(Supplier supplier) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	public List<Supplier> fetchAllSupplier() 
	{
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		return supplierList;
	}

	public Supplier getSupplierById(int supplierId) 
	{
		List<Supplier> getList = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierId = "+supplierId).getResultList();
		return getList.get(0);
	}

	public void deleteSupplier(int supplierId) 
	{
		sessionFactory.getCurrentSession().delete(getSupplierById(supplierId));
	}

	public String fetchAllSupplierByJson() {
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		Gson g = new Gson();
		String list = g.toJson(supplierList);
		return list; 
	}

}
