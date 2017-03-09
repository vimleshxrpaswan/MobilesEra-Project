<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="navbar.jsp" %>
<link rel="stylesheet" href="resources/css/error.css" />

<%-- <h1>SubCategory Form</h1>
<form:form modelAttribute="subCategory" action="addSubCategory">
	<form:input type="hidden" path="subCategoryId" placeholder="SubCategory Id" /> 
	<form:input path="subCategoryName" placeholder="SubCategory Name" />
	<form:errors path="subCategoryName" cssClass="error"/>
	<form:input path="subCategoryDescription" placeholder="SubCategory Description" />
	<form:errors path="subCategoryDescription" cssClass="error" />
	<form:select path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
	<input type="submit" value="Add SubCategory" />
</form:form>
 --%>
 
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
				<div class="col-xs-12 col-sm-6  col-md-6"> 
					<form:input class="form-control" path="subCategoryName" placeholder="SubCategory Name" />
				</div>
				<div class="col-xs-12 col-sm-6  col-md-6">	
					<form:errors path="subCategoryName" cssClass="error"/>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-6  col-md-6"> 
					<form:input class="form-control" path="SubCategoryDescription" placeholder="SubCategory Description" />
				</div>
				<div class="col-xs-12 col-sm-6  col-md-6">	
					<form:errors path="SubCategoryDescription" cssClass="error"/>
			</div>
			</div>
			<br>
				<div class="row">
					<div class="col-xs-12 col-sm-6  col-md-6">					
						<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
					</div>
				</div>		
			<br>
		<div class="row">
			<div class="text-center col-xs-12 col-sm-12  col-md-12">
				<input class="btn btn-success" type="submit" value="Add SubCategory" />
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
<th>Category</th>
<th>Update Category</th>
<th>Delete Category</th> 
</tr>
<c:forEach var="subcategorylist" items="${subCategoryList}">
<tr>
<td>${subcategorylist.subCategoryId}</td>
<td>${subcategorylist.subCategoryName}</td>
<td>${subcategorylist.subCategoryDescription}</td>
<td>${subcategorylist.category.categoryName}</td>
<td><a href="updateSubCategoryById-${subcategorylist.subCategoryId}">Update</a></td>
<td><a href="deleteSubCategoryById-${subcategorylist.subCategoryId}">Delete</a></td>  
</tr>
</c:forEach>
</table>

</div>
