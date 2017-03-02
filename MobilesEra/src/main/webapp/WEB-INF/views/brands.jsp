<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="home.jsp" %>


<h1>Brand Page</h1>
<form:form modelAttribute="brand" action="addBrand">
	<form:input type="hidden" path="brandId" placeholder="Brand Id" /> 
	<form:input path="brandName" placeholder="Brand Name"/>
	<form:input path="brandDescription" placeholder="Brand Description" />
	<input type="submit" value="Add Brand" />
</form:form>
<br><br>
<table class="table">
<tr>
<th>Id</th>
<th>Name</th>
<th>Description</th>
<th>Update Brand</th>
<th>Delete Brand</th> 
</tr>
<c:forEach var="brandlist" items="${brandList}">
<tr>
<td>${brandlist.brandId}</td>
<td>${brandlist.brandName}</td>
<td>${brandlist.brandDescription}</td>
<td><a href="updateBrandById-${brandlist.brandId}">Update</a></td>
<td><a href="deleteBrandById-${brandlist.brandId}">Delete</a></td>  
</tr>
</c:forEach>
</table>


