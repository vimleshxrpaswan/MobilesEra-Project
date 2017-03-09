<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="navbar.jsp" %>
<link rel="stylesheet" href="resources/css/error.css" />

<%-- 
<h1>Product Form</h1>
<form:form modelAttribute="product" action="addProduct">
	<form:input type="hidden" path="productId" placeholder="Product Id" /> 
	
	<form:input path="productName" placeholder="Product Name" />
	<form:errors path="productName" cssClass="error" />
	
	<form:input path="productDescription" placeholder="Product Description" />
	<form:errors path="productDescription" cssClass="error" />
	
	<form:input path="productActualPrice" placeholder="Product Actual Price" />
	
	<form:input path="productDiscount" placeholder="Product Discount" />
	
	<form:input path="productMadeCountry" placeholder="Product MadeCountry" />
	<form:errors path="productMadeCountry" cssClass="error" />
	
	<form:input path="productStock" placeholder="Product Stock" />
	
	<form:select path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
	<form:select path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
	<form:select path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName"/>
	<form:select path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName"/>
	<input type="submit" value="Add Product" />
</form:form>
 --%>
 <div class="container">
 	<div class="text-center">
 		<a href="categoryPage" class="btn btn-info" role="button">Category Form Page</a>
		<a href="subCategoryPage" class="btn btn-info" role="button">SubCategory Form Page</a>		
		<a href="supplierPage" class="btn btn-info" role="button">Supplier Form Page</a>				
		<a href="brandPage" class="btn btn-info" role="button">Brand Form Page</a>
	</div>
 	<div class="text-center">
 		<h1>Product Form</h1>
 	</div>
 	<br>
 	<div class="form">	
		<form:form modelAttribute="product" action="addProduct" enctype="multipart/form-data">
				<form:input type="hidden" path="productId" placeholder="Product Id" /> 
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">	
				<form:input class="form-control" path="productName" placeholder="Product Name" autofocus="true" />
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6">	
				<form:errors path="productName" cssClass="error" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:input class="form-control" path="productDescription" placeholder="Product Description" />
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6">	
				<form:errors path="productDescription" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="form-group col-xs-12 col-sm-6 col-md-6">                         
    			<label class="custom-file">
    				<form:input path="productImage" accept=".jpg,.jpeg,.png" type="file" name="file" class="custom-file-input" ></form:input>    				
    				<span class="custom-file-control"></span>
   				</label>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:input class="form-control" path="productActualPrice" placeholder="Product Actual Price" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:input class="form-control" path="productDiscount" placeholder="Product Discount" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:input class="form-control" path="productMadeCountry" placeholder="Product MadeCountry" />
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6">	
				<form:errors path="productMadeCountry" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:input class="form-control" path="productStock" placeholder="Product Stock" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:select class="form-control" path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:select class="form-control" path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="text-center col-sm-12 col-xs-12 col-md-12">
				<input class="btn btn-success" type="submit" value="Add Product" />
				<input class="btn btn-danger" type="reset" value="Reset" />
			</div>	
		</div>
</form:form>
 	</div>
<br><br>
<table class="table">
<tr>
<th>Id</th>
<th>Name</th>
<th>Description</th>
<th>Actual Price</th>
<th>Discount</th>
<th> Made In Country</th>
<th>Stock</th>
<th>Category</th>
<th>SubCategory</th>
<th>Brand</th>
<th>Supplier</th>
<th>Product Image</th>
<th>Update Product</th>
<th>Delete Product</th> 
</tr>
<c:forEach var="productlist" items="${productList}">
<tr>
<td>${productlist.productId}</td>
<td>${productlist.productName}</td>
<td>${productlist.productDescription}</td>
<td>${productlist.productActualPrice}</td>
<td>${productlist.productDiscount}</td>
<td>${productlist.productMadeCountry}</td>
<td>${productlist.productStock}</td>
<td>${productlist.category.categoryName}</td>
<td>${productlist.subCategory.subCategoryName}</td>
<td>${productlist.brand.brandName}</td>
<td>${productlist.supplier.supplierName}</td>
<td><img src="resources/productImages/productImage-${productlist.productId}.jpg" height="80px" width="80px" alt="img not uploaded"/></td>
<td><a href="updateProductById-${productlist.productId}">Update</a></td>
<td><a href="deleteProductById-${productlist.productId}">Delete</a></td>  
</tr>
</c:forEach>
</table>
</div>