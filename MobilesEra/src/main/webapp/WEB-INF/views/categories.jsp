<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="navbar.jsp" %>
<link rel="stylesheet" href="resources/css/error.css"/>

<%-- <h1>Category Form</h1>
<form:form modelAttribute="category" action="addCategory">
	<form:input type="hidden" path="categoryId" placeholder="Category Id" /> 
	<form:input path="categoryName" placeholder="Category Name" />
	<form:errors path="categoryName" />
	<form:input path="categoryDescription" placeholder="Category Description" />
	<form:errors path="categoryDescription" />
	<input type="submit" value="Add Category" />
</form:form>
 --%>
 <div class="container">
 	 <div class="text-center">
		<a href="subCategoryPage" class="btn btn-info" role="button">SubCategory Form Page</a>
		<a href="productPage" class="btn btn-info" role="button">Product Form Page</a>
		<a href="supplierPage" class="btn btn-info" role="button">Supplier Form Page</a>				
		<a href="brandPage" class="btn btn-info" role="button">Brand Form Page</a>
	</div>
 	<div class="text-center">
 		<h1>Category Form</h1>
 	</div>
 	<br>
 	<div class="form">
		<form:form modelAttribute="category" action="addCategory">
			
			<form:input type="hidden" path="categoryId" placeholder="Category Id" /> 
		  <div class="row">
		  	<div class="col-xs-12 col-sm-6 col-md-6">
				<form:input class="form-control" path="categoryName" placeholder="Category Name" />
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:errors cssClass="error" path="categoryName" />
			</div>
		  </div>
		  <br>
		  <div class="row">
		  	<div class="col-xs-12 col-sm-6 col-md-6">		
				<form:input class="form-control" path="categoryDescription" placeholder="Category Description" />
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6">
				<form:errors cssClass="error" path="categoryDescription" />
			</div>	
		  </div>
		  <br>
		  <div class="row">
		  	<div class="col-sm-12 col-md-12">	
		  		<div class="text-center">	
					<input class="btn btn-success" type="submit" value="Add Category" />
					<input class="btn btn-danger" type="reset" value="Reset" />
				</div>
				
			</div>
		  </div>	
		</form:form>
 	</div>
 	
 <br><br>
<%-- <table class="table">
<tr>
<th>Id</th>
<th>Name</th>
<th>Description</th>
<th>Update Category</th>
<th>Delete Category</th> 
</tr>
<c:forEach var="clist" items="${categoryList}">
<tr>
<td>${clist.categoryId}</td>
<td>${clist.categoryName}</td>
<td>${clist.categoryDescription}</td>
<td><a href="updateCategoryById-${clist.categoryId}">Update</a></td>
<td><a href="deleteCategoryById-${clist.categoryId}">Delete</a></td>  
</tr>
</c:forEach>
</table>
 --%>
 <div ng-app="myApp">
 <input  type="text" ng-model="search" placeholder="search" />
 <br>
 <table class="table" ng-controller="myController">
<tr>
<th>Id</th>
<th>Name</th>
<th>Description</th>
<th>Update Category</th>
<th>Delete Category</th> 
</tr>
<tr ng-repeat="clist in myscope | filter:search">
<td>{{clist.categoryId}}</td>
<td>{{clist.categoryName}}</td>
<td>{{clist.categoryDescription}}</td>
<td><a href="updateCategoryById-{{clist.categoryId}}">Update</a></td>
<td><a href="deleteCategoryById-{{clist.categoryId}}">Delete</a></td>
</tr>
</table>
 </div>

</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${categoryListByJson}
});
</script>
