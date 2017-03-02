package com.mobiles.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mobiles.daoimpl.SupplierDAOImpl;
import com.mobiles.model.Supplier;

@Service
@Transactional
public class SupplierService
{
	@Autowired
	SupplierDAOImpl supplierDAOImpl; 
	
	public void addSupplier(Supplier supplier)
	{
		supplierDAOImpl.addSupplier(supplier);
	}
	
	public List<Supplier> fetchAllSupplier()
	{
		return supplierDAOImpl.fetchAllSupplier();
	}
	
	public Supplier getSupplierById(int supplierId)
	{
		return supplierDAOImpl.getSupplierById(supplierId);
	}
	
	public void deleteSupplier(int supplierId)
	{
		supplierDAOImpl.deleteSupplier(supplierId);
	}
}
