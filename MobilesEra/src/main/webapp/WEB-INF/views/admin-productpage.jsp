<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<%@include file="home.jsp" %>


<h1>Product Form</h1>
<form:form modelAttribute="product" action="addProduct">
	<form:input type="hidden" path="productId" placeholder="Product Id" /> 
	<form:input path="productName" placeholder="Product Name" />
	<form:input path="productDescription" placeholder="Product Description" />
	<form:input path="productActualPrice" placeholder="Product Actual Price" />
	<form:input path="productDiscount" placeholder="Product Discount" />
	<form:input path="productMadeCountry" placeholder="Product MadeCountry" />
	<form:input path="productStock" placeholder="Product Stock" />
	<form:select path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
	<form:select path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
	<form:select path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName"/>
	<form:select path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName"/>
	<input type="submit" value="Add Product" />
</form:form>
<br><br>
<table class="table">
<tr>
<th>Id</th>
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
<th>Update Product</th>
<th>Delete Product</th> 
</tr>
<c:forEach var="productlist" items="${productList}">
<tr>
<td>${productlist.productId}</td>
<td>${productlist.productName}</td>
<td>${productlist.productDescription}</td>
<td>${productlist.productActualPrice}</td>
<td>${productlist.productDiscount}</td>
<td>${productlist.productMadeCountry}</td>
<td>${productlist.productStock}</td>
<td>${productlist.category.categoryName}</td>
<td>${productlist.subCategory.subCategoryName}</td>
<td>${productlist.brand.brandName}</td>
<td>${productlist.supplier.supplierName}</td>
<td><a href="updateProductById-${productlist.productId}">Update</a></td>
<td><a href="deleteProductById-${productlist.productId}">Delete</a></td>  
</tr>
</c:forEach>
</table>
