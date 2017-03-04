package com.mobiles.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Supplier 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int supplierId;
	
	@NotEmpty(message="Supplier Name can not be empty")
	private String supplierName;
	
	@NotEmpty(message="Supplier Description can not be empty")
	private String supplierDescription;
	
	@NotEmpty(message="Supplier Landmark can not be empty")
	private String supplierLandmark;
	
	@NotEmpty(message="Supplier Street can not be empty")
	private String supplierStreet;
	
	@NotEmpty(message="Supplier City can not be empty")
	private String supplierCity;
	
	@NotEmpty(message="Supplier State can not be empty")
	private String supplierState;
	
	@NotEmpty(message="Supplier Country can not be empty")
	private String supplierCountry;
	
	@NotEmpty(message="Supplier Email can not be empty") @Email
	private String supplierEmail;
	
	@NotEmpty(message="Supplier Contact Number can not be empty")
	private String supplierContactNo;
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierDescription() {
		return supplierDescription;
	}
	public void setSupplierDescription(String supplierDescription) {
		this.supplierDescription = supplierDescription;
	}
	public String getSupplierLandmark() {
		return supplierLandmark;
	}
	public void setSupplierLandmark(String supplierLandmark) {
		this.supplierLandmark = supplierLandmark;
	}
	public String getSupplierStreet() {
		return supplierStreet;
	}
	public void setSupplierStreet(String supplierStreet) {
		this.supplierStreet = supplierStreet;
	}
	public String getSupplierCity() {
		return supplierCity;
	}
	public void setSupplierCity(String supplierCity) {
		this.supplierCity = supplierCity;
	}
	public String getSupplierState() {
		return supplierState;
	}
	public void setSupplierState(String supplierState) {
		this.supplierState = supplierState;
	}
	public String getSupplierCountry() {
		return supplierCountry;
	}
	public void setSupplierCountry(String supplierCountry) {
		this.supplierCountry = supplierCountry;
	}
	public String getSupplierEmail() {
		return supplierEmail;
	}
	public void setSupplierEmail(String supplierEmail) {
		this.supplierEmail = supplierEmail;
	}
	public String getSupplierContactNo() {
		return supplierContactNo;
	}
	public void setSupplierContactNo(String supplierContactNo) {
		this.supplierContactNo = supplierContactNo;
	}
	
	
}
