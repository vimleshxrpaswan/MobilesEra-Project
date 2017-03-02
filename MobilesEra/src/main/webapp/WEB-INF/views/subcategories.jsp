<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="home.jsp" %>


<h1>SubCategory Page</h1>
<form:form modelAttribute="subCategory" action="addSubCategory">
	<form:input type="hidden" path="subCategoryId" placeholder="SubCategory Id" /> 
	<form:input path="subCategoryName" placeholder="SubCategory Name" />
	<form:input path="subCategoryDescription" placeholder="SubCategory Description" />
	<form:select path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
	<input type="submit" value="Add SubCategory" />
</form:form>
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


