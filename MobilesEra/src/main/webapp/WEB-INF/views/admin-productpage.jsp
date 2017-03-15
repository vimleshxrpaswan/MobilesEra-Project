<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css" />
 
<div class="container">
<!-- Buttons -->
 	<div class="text-center">
 		<a href="categoryPage" class="btn btn-info" role="button">Category Form Page</a>
		<a href="subCategoryPage" class="btn btn-info" role="button">SubCategory Form Page</a>		
		<a href="supplierPage" class="btn btn-info" role="button">Supplier Form Page</a>				
		<a href="brandPage" class="btn btn-info" role="button">Brand Form Page</a>
	</div>

<!-- Product Form -->	
 	<div class="text-center">
 		<h1>Product Form</h1>
 	</div>
 	<br>
 	<div class="form">	
		<form:form modelAttribute="product" action="addProduct" enctype="multipart/form-data">
				<form:input type="hidden" path="productId" placeholder="Product Id" /> 
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:label path="productName">Enter the Name of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:input class="form-control" path="productName" placeholder="Product Name" autofocus="true" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productName" cssClass="error" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productDescription">Enter the Description for Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productDescription" placeholder="Product Description" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productDescription" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productImage">Choose the Image for Product </form:label>
			</div>
			<div class="form-group col-xs-12 col-sm-4 col-md-4">                         
    			<label class="custom-file">
    				<form:input path="productImage" accept=".jpg,.jpeg,.png" type="file" name="file" class="custom-file-input" ></form:input>    				
    				<span class="custom-file-control"></span>
   				</label>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productActualPrice">Enter the Price of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productActualPrice" placeholder="Product Actual Price" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productDiscount">Enter the Discount for Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productDiscount" placeholder="Product Discount" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productMadeCountry">Enter the Country Name Where Product Made </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productMadeCountry" placeholder="Product MadeCountry" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productMadeCountry" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productStock">Enter the Stock of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productStock" placeholder="Product Stock" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="categoryId">Select Category of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="subCategoryId">Select SubCategory of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="brandId">Select Brand of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="supplierId">Select Supplier of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="text-center col-sm-12 col-xs-12 col-md-12">
				<button class="btn btn-success" type="submit"  >${btnLabel} <span class="glyphicon glyphicon-plus"></span></button>
				<button class="btn btn-danger" type="reset" >Reset <span class="glyphicon glyphicon-repeat"></span></button>
			</div>	
		</div>
</form:form>
 	</div>
 	
<br>
<hr style="height:2px;border-width:0;color:gray;background-color:gray">

<!-- Product List -->

 <div ng-app="myApp">
 <div class="text-center">
 	<h1>Product List</h1>
 </div>
 <div class="row">	
 	<div class="input-group col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="search" />
 		<div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </div>
 	</div>
 </div>
 <br>
 <div class="table-responsive">
 <table class="table" ng-controller="myController">
<tr>
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
<tr ng-repeat="productlist in myscope | filter:search ">
<td>{{productlist.productName}}</td>
<td>{{productlist.productDescription}}</td>
<td>{{productlist.productActualPrice}}</td>
<td>{{productlist.productDiscount}}</td>
<td>{{productlist.productMadeCountry}}</td>
<td>{{productlist.productStock}}</td>
<td>{{productlist.category.categoryName}}</td>
<td>{{productlist.subCategory.subCategoryName}}</td>
<td>{{productlist.brand.brandName}}</td>
<td>{{productlist.supplier.supplierName}}</td>
<td><img src="resources/productImages/productImage-{{productlist.productId}}.jpg" height="80px" width="80px" alt="img not uploaded"/></td>
<td><a href="updateProductById-{{productlist.productId}}" class="btn btn-warning" role="button" >Update</a></td>
<td><a href="deleteProductById-{{productlist.productId}}" class="btn btn-danger" role="button">Delete</a></td>  
</tr>
</table>
</div>
 </div>

</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productListByJson}
});
</script>

