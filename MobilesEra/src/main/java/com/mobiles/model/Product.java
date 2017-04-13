package com.mobiles.model;

import java.io.Serializable;
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

import com.google.gson.annotations.Expose;

@Entity
public class Product implements Serializable 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Expose
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private  int productId;
    
	@Expose
	@NotEmpty(message="Product Name can not be empty")
    private String productName;
	
	@Expose
	/*@NotEmpty(message="Product weight can not be empty")*/
	private String productWeight;
	
	@Expose
	@NotEmpty(message="Product warranty can not be empty/ if there is no warranty then give No Warranty")
	private String productWarranty;
	
	@Expose
	@NotEmpty(message="Product Colour can not be empty")
	private String productColor;
	
	@Expose
	private String productRam;
	
	@Expose	
	private String productNetworkType;
	
	@Expose
	/*@NotEmpty(message="Product Screen Size can not be empty")*/
	private String productScreenSize;
	
	@Expose
	/*@NotEmpty(message="Product Battery Capacity can not be empty")*/
	private String productBatteryCapacity;
	
	@Expose
	/*@NotEmpty(message="Product Camera can not be empty")*/
	private String productCamera;
	
	@Expose	
	private String productSecondaryCamera;
	
	@Expose
	/*@NotEmpty(message="Product Oerating System can not be empty")*/
	private String productOperatingSystem;
	
	@Expose
	/*@NotEmpty(message="Product Processor can not be empty")*/
	private String productProcessor;
	
	@Expose
	private String productGraphicsMemory;
	
	@Expose
	private String productHardDiskCapacity;
	
	@Expose
	private String productPortType;
	
	@Expose
	/*@NotEmpty(message="Product Connectivity Features can not be empty")*/
	private String productConnectivityFeatures;
	
	@Expose
	/*@NotEmpty(message="Product Resolution can not be empty")*/
	private String productResolution;
	
	@Expose
    private int productPrice;
	
	@Expose
    private int productAmount;
	
	@Expose
    private double productDiscount;
	
	@Expose
	@NotEmpty(message="Product Made Country can not be empty")
    private String productMadeCountry;
	
	@Expose
    private int productStock;
    
	@Expose
    private int categoryId;
	
	@Expose
    private int subCategoryId;
	
	@Expose	
    private int supplierId;
	
	@Expose
    private int brandId;
	    
	@Expose
    @ManyToOne
    @JoinColumn(name="categoryId", nullable=false , updatable=false , insertable=false )
    private Category category;
    
	@Expose
    @ManyToOne
    @JoinColumn(name="subCategoryId", nullable=false , updatable=false , insertable=false )
    private SubCategory subCategory;
    
	@Expose
    @ManyToOne
    @JoinColumn(name="supplierId", nullable=false , updatable=false , insertable=false )
    private Supplier supplier;

	@Expose
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
	
	public String getProductWeight() {
		return productWeight;
	}

	public void setProductWeight(String productWeight) {
		this.productWeight = productWeight;
	}

	public String getProductWarranty() {
		return productWarranty;
	}

	public void setProductWarranty(String productWarranty) {
		this.productWarranty = productWarranty;
	}

	public String getProductColor() {
		return productColor;
	}

	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}

	public String getProductRam() {
		return productRam;
	}

	public void setProductRam(String productRam) {
		this.productRam = productRam;
	}

	public String getProductNetworkType() {
		return productNetworkType;
	}

	public void setProductNetworkType(String productNetworkType) {
		this.productNetworkType = productNetworkType;
	}

	public String getProductScreenSize() {
		return productScreenSize;
	}

	public void setProductScreenSize(String productScreenSize) {
		this.productScreenSize = productScreenSize;
	}

	public String getProductBatteryCapacity() {
		return productBatteryCapacity;
	}

	public void setProductBatteryCapacity(String productBatteryCapacity) {
		this.productBatteryCapacity = productBatteryCapacity;
	}

	public String getProductCamera() {
		return productCamera;
	}

	public void setProductCamera(String productCamera) {
		this.productCamera = productCamera;
	}

	public String getProductSecondaryCamera() {
		return productSecondaryCamera;
	}

	public void setProductSecondaryCamera(String productSecondaryCamera) {
		this.productSecondaryCamera = productSecondaryCamera;
	}

	public String getProductOperatingSystem() {
		return productOperatingSystem;
	}

	public void setProductOperatingSystem(String productOperatingSystem) {
		this.productOperatingSystem = productOperatingSystem;
	}

	public String getProductProcessor() {
		return productProcessor;
	}

	public void setProductProcessor(String productProcessor) {
		this.productProcessor = productProcessor;
	}

	public String getProductGraphicsMemory() {
		return productGraphicsMemory;
	}

	public void setProductGraphicsMemory(String productGraphicsMemory) {
		this.productGraphicsMemory = productGraphicsMemory;
	}

	public String getProductHardDiskCapacity() {
		return productHardDiskCapacity;
	}

	public void setProductHardDiskCapacity(String productHardDiskCapacity) {
		this.productHardDiskCapacity = productHardDiskCapacity;
	}

	public String getProductPortType() {
		return productPortType;
	}

	public void setProductPortType(String productPortType) {
		this.productPortType = productPortType;
	}

	public String getProductConnectivityFeatures() {
		return productConnectivityFeatures;
	}

	public void setProductConnectivityFeatures(String productConnectivityFeatures) {
		this.productConnectivityFeatures = productConnectivityFeatures;
	}

	public String getProductResolution() {
		return productResolution;
	}

	public void setProductResolution(String productResolution) {
		this.productResolution = productResolution;
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

	public int getProductAmount() {
		return productAmount;
	}

	public void setProductAmount(int productAmount) {
		this.productAmount = productAmount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	


}
