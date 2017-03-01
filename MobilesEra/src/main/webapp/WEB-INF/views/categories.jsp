<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="home.jsp" %>


<h1>Category Page</h1>
<form:form modelAttribute="category" action="addCategory">
	<form:input type="hidden" path="categoryId" placeholder="Category Id" /> 
	<form:input path="categoryName" placeholder="Category Name" />
	<form:input path="categoryDescription" placeholder="Category Description" />
	<input type="submit" value="Add Category" />
</form:form>
<br><br>
<table class="table">
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


