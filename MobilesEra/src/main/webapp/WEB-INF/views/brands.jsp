<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="navbar.jsp" %>
<link rel="stylesheet" href="resources/css/error.css" />

 <div class="container">
 	<div class="text-center">
 		<a href="categoryPage" class="btn btn-info" role="button">Category Form Page</a>
		<a href="subCategoryPage" class="btn btn-info" role="button">SubCategory Form Page</a>
		<a href="productPage" class="btn btn-info" role="button">Product Form Page</a>
		<a href="supplierPage" class="btn btn-info" role="button">Supplier Form Page</a>						
	</div>
 	<div class="text-center">
 		<h1>Brand Form</h1>
 	</div>	
 	<br>
 	<div class="form">
		<form:form modelAttribute="brand" action="addBrand">
			<form:input type="hidden" path="brandId" placeholder="Brand Id" /> 
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="brandName">Enter the Brand Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="brandName" placeholder="Brand Name" autofocus="true"/>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">	
					<form:errors cssClass="error" path="brandName" />
				</div>	
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="brandDescription">Enter the Description of Brand</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="brandDescription" placeholder="Brand Description" />					
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="brandDescription" />
				</div>
			</div>
			<br>
				<div class="row">
					<div class="col-xs-12 col-sm-4 col-md-4">
						<form:label path="subCategoryId">Select SubCategory of Brand</form:label>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4">
						<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
					</div>
				</div>
			<br>
			<div class="row">
		  	<div class="col-sm-12 col-md-12">	
		  		<div class="text-center">	
					<input class="btn btn-success" type="submit" value="${btnLabel}" />
					<input class="btn btn-danger" type="reset" value="Reset" />
				</div>
				
			</div>
		  </div>		
		</form:form>
 </div>
 <br>
 <hr style="height:2px;border-width:0;color:gray;background-color:gray">
 
 <div ng-app="myApp">
 <div class="text-center">
 	<h1>Brand List</h1>
 </div>
 <div class="row">	
 	<div class="col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="search" />
 	</div>
 </div>
 <br>
 <div class="table-responsive">
 <table class="table" ng-controller="myController">
<tr>
<th>Id</th>
<th>Name</th>
<th>Description</th>
<th>SubCategory</th>
<th>Update SubCategory</th>
<th>Delete SubCategory</th> 
</tr>
<tr ng-repeat="brandlist in myscope | filter:search">
<td>{{brandlist.brandId}}</td>
<td>{{brandlist.brandName}}</td>
<td>{{brandlist.brandDescription}}</td>
<td>{{brandlist.subCategory.subCategoryName}}</td>
<td><a href="updateBrandById-{{brandlist.brandId}}">Update</a></td>
<td><a href="deleteBrandById-{{brandlist.brandId}}">Delete</a></td>
</tr>
</table>
</div>
 </div>

</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${brandListByJson}
});
</script>

