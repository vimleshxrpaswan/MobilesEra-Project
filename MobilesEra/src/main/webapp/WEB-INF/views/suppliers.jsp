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
		<a href="brandPage" class="btn btn-info" role="button">Brand Form Page</a>
	</div>
 <div class="text-center">
	 <h1>Supplier Form</h1>
 </div>
 <br>	 
 <div class="form">
<form:form modelAttribute="supplier" action="addSupplier">
		<form:input type="hidden" path="supplierId" placeholder="Supplier Id" /> 
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">	
			<form:input class="form-control" path="supplierName" placeholder="Supplier Name" autofocus="true"/>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">		
			<form:errors path="supplierName" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">
			<form:input class="form-control" path="supplierDescription" placeholder="Supplier Description" />
		</div>	
		<div class="col-xs-12 col-sm-6 col-md-6">	
			<form:errors path="supplierDescription" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">
			<form:input class="form-control" path="supplierLandmark" placeholder="Supplier Landmark" />
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">	
			<form:errors path="supplierLandmark" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">		
			<form:input class="form-control" path="supplierStreet" placeholder="Supplier Street" />
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">
			<form:errors path="supplierStreet" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">	
			<form:input class="form-control" path="supplierCity" placeholder="Supplier City" />
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">
			<form:errors path="supplierCity" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">		
			<form:input class="form-control" path="supplierState" placeholder="Supplier State" />
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">	
			<form:errors path="supplierState" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">		
			<form:input class="form-control" path="supplierCountry" placeholder="Supplier Country" />
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">	
			<form:errors path="supplierCountry" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">		
			<form:input class="form-control" path="supplierEmail" placeholder="Supplier Email" />
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">	
			<form:errors path="supplierEmail" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6">		
			<form:input class="form-control" path="supplierContactNo" placeholder="Supplier Contact Number" />
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6">	
			<form:errors path="supplierContactNo" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="text-center col-xs-12 col-sm-12 col-md-12">
			<input class="btn btn-success" type="submit" value="${btnLabel}" />
			<input class="btn btn-danger" type="reset" value="Reset" />
		</div>
	</div>
</form:form>
 </div>
 
 <br><br>

 <div ng-app="myApp">
 <div class="text-center">
 	<h1>Supplier List</h1>
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
<th>Landmark</th>
<th>Street</th>
<th>City</th>
<th>State</th>
<th>Country</th>
<th>Email</th>
<th>Contact Number</th>
<th>Update Brand</th>
<th>Delete Brand</th> 
</tr>
<tr ng-repeat="supplierlist in myscope | filter:search">
<td>{{supplierlist.supplierId}}</td>
<td>{{supplierlist.supplierName}}</td>
<td>{{supplierlist.supplierDescription}}</td>
<td>{{supplierlist.supplierLandmark}}</td>
<td>{{supplierlist.supplierStreet}}</td>
<td>{{supplierlist.supplierCity}}</td>
<td>{{supplierlist.supplierState}}</td>
<td>{{supplierlist.supplierCountry}}</td>
<td>{{supplierlist.supplierEmail}}</td>
<td>{{supplierlist.supplierContactNo}}</td>
<td><a href="updateSupplierById-{{supplierlist.supplierId}}">Update</a></td>
<td><a href="deleteSupplierById-{{supplierlist.supplierId}}">Delete</a></td>
</tr>
</table>
 </div>
</div>
</div>
<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${supplierListByJson}
});
</script>
