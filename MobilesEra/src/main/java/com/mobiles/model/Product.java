package com.mobiles.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private  int productId;
    
	@NotEmpty(message="Product Name can not be empty")
    private String productName;
	
	@NotEmpty(message="Product Description can not be empty")
    private String productDescription;
	
    private double productActualPrice;
	
    private double productDiscount;
	
	@NotEmpty(message="Product Made Country can not be empty")
    private String productMadeCountry;
	
    private int productStock;
    
    private int categoryId;
    private int subCategoryId;
    private int supplierId;
    private int brandId;
    
    @ManyToOne
    @JoinColumn(name="categoryId", nullable=false , updatable=false , insertable=false )
    private Category category;
    
    @ManyToOne
    @JoinColumn(name="subCategoryId", nullable=false , updatable=false , insertable=false )
    private SubCategory subCategory;
    
    @ManyToOne
    @JoinColumn(name="supplierId", nullable=false , updatable=false , insertable=false )
    private Supplier supplier;

	@ManyToOne
    @JoinColumn(name="brandId", nullable=false , updatable=false , insertable=false )
    private Brand brand;
    
    @Transient
    private List<MultipartFile> productImage; 
    
    public List<MultipartFile> getProductImage() {
		return productImage;
	}

	public void setProductImage(List<MultipartFile> productImage) {
		this.productImage = productImage;
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

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}


	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public String getProductMadeCountry() {
		return productMadeCountry;
	}

	public void setProductMadeCountry(String productMadeCountry) {
		this.productMadeCountry = productMadeCountry;
	}

	public int getProductStock() {
		return productStock;
	}

	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}

	public double getProductActualPrice() {
		return productActualPrice;
	}

	public void setProductActualPrice(double productActualPrice) {
		this.productActualPrice = productActualPrice;
	}

	public double getProductDiscount() {
		return productDiscount;
	}

	public void setProductDiscount(double productDiscount) {
		this.productDiscount = productDiscount;
	}


}
