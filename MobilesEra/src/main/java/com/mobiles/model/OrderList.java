package com.mobiles.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.google.gson.annotations.Expose;

@Entity
public class OrderList 
{
	@Id
	@Expose
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int orderId;
	
	@Expose
	private int userId;
	
	@Expose
	private int productId;
	
	@Expose	
	private String productName;
	
	@Expose	
	private int productPrice;
	
	@Expose
    private double productDiscount;
	
	@Expose
	private String orderStatus;
	
	@Expose
	private Date orederedDate;
	
	@Expose
	private Date deliveredDate;
	
	@ManyToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public double getProductDiscount() {
		return productDiscount;
	}

	public void setProductDiscount(double productDiscount) {
		this.productDiscount = productDiscount;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Date getOrederedDate() {
		return orederedDate;
	}

	public void setOrederedDate(Date orederedDate) {
		this.orederedDate = orederedDate;
	}

	public Date getDeliveredDate() {
		return deliveredDate;
	}

	public void setDeliveredDate(Date deliveredDate) {
		this.deliveredDate = deliveredDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
