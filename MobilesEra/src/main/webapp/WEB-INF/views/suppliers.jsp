<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="home.jsp" %>


<h1>Supplier Page</h1>
<form:form modelAttribute="supplier" action="addSupplier">
	<form:input type="hidden" path="supplierId" placeholder="Supplier Id" /> 
	<form:input path="supplierName" placeholder="Supplier Name"/>
	<form:input path="supplierDescription" placeholder="Supplier Description" />
	<form:input path="supplierLandmark" placeholder="Supplier Landmark" />
	<form:input path="supplierStreet" placeholder="Supplier Street" />
	<form:input path="supplierCity" placeholder="Supplier City" />
	<form:input path="supplierState" placeholder="Supplier State" />
	<form:input path="supplierCountry" placeholder="Supplier Country" />
	<form:input path="supplierEmail" placeholder="Supplier Email" />
	<form:input path="supplierContactNo" placeholder="Supplier Contact Number" />
	<input type="submit" value="Add Supplier" />
</form:form>
<br><br>
<table class="table">
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
<c:forEach var="supplierlist" items="${supplierList}">
<tr>
<td>${supplierlist.supplierId}</td>
<td>${supplierlist.supplierName}</td>
<td>${supplierlist.supplierDescription}</td>
<td>${supplierlist.supplierLandmark}</td>
<td>${supplierlist.supplierStreet}</td>
<td>${supplierlist.supplierCity}</td>
<td>${supplierlist.supplierState}</td>
<td>${supplierlist.supplierCountry}</td>
<td>${supplierlist.supplierEmail}</td>
<td>${supplierlist.supplierContactNo}</td>
<td><a href="updateSupplierById-${supplierlist.supplierId}">Update</a></td>
<td><a href="deleteSupplierById-${supplierlist.supplierId}">Delete</a></td>  
</tr>
</c:forEach>
</table>


