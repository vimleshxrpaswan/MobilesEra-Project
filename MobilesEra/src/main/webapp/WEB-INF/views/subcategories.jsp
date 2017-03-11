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
		<a href="productPage" class="btn btn-info" role="button">Product Form Page</a>
		<a href="supplierPage" class="btn btn-info" role="button">Supplier Form Page</a>
		<a href="brandPage" class="btn btn-info" role="button">Brand Form Page</a>
	</div>
	<div class="text-center">
 		<h1>SubCategory Form</h1>
 	</div>
 	<br>
 	<div class="form">
		<form:form modelAttribute="subCategory" action="addSubCategory">
			<form:input type="hidden" path="subCategoryId" placeholder="SubCategory Id" />
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:label path="subCategoryName">Enter SubCategory Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:input class="form-control" path="subCategoryName" placeholder="SubCategory Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">	
					<form:errors path="subCategoryName" cssClass="error"/>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:label path="subCategoryDescription">Enter Description of SubCategory</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:input class="form-control" path="subCategoryDescription" placeholder="SubCategory Description" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">	
					<form:errors path="subCategoryDescription" cssClass="error"/>
				</div>
			</div>
			<br>
				<div class="row">
					<div class="col-xs-12 col-sm-4  col-md-4"> 
						<form:label path="categoryId">Select Category of SubCategory</form:label>
					</div>	 
					<div class="col-xs-12 col-sm-4  col-md-4">					
						<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
					</div>
				</div>		
			<br>
		<div class="row">
			<div class="text-center col-xs-12 col-sm-12  col-md-12">
				<input class="btn btn-success" type="submit" value="${btnLabel}" />
				<input class="btn btn-danger" type="reset" value="Reset" />
			</div>	
		</div>
	</form:form>
 	</div>
 
<br>
<hr style="height:2px;border-width:0;color:gray;background-color:gray">


 <div ng-app="myApp">
 <div class="text-center">
 	<h1>SubCategory List</h1>
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
<th>Category</th>
<th>Update SubCategory</th>
<th>Delete SubCategory</th> 
</tr>
<tr ng-repeat="subcategorylist in myscope | filter:search">
<td>{{subcategorylist.subCategoryId}}</td>
<td>{{subcategorylist.subCategoryName}}</td>
<td>{{subcategorylist.subCategoryDescription}}</td>
<td>{{subcategorylist.category.categoryName}}</td>
<td><a href="updateSubCategoryById-{{subcategorylist.subCategoryId}}">Update</a></td>
<td><a href="deleteSubCategoryById-{{subcategorylist.subCategoryId}}">Delete</a></td>
</tr>
</table>
 </div>
</div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${subCategoryListByJson}
});
</script>
