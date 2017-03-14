<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp" %>
<link rel="stylesheet" href="resources/css/button.css" />
<%@ include file="slider.jsp" %>
<%-- <div class="row">
<c:forEach var="category" items="${categoryList}">
	<div class="col-md-2">
	${category.categoryName}
	<div class="row">
	 <c:forEach var="subCategory" items="${category.subCategory}">
		<div class="col-md-12"><ul><li>
			${subCategory.subCategoryName}</li></ul>
		</div>
	</c:forEach> 
	</div>
	</div>
</c:forEach>
</div>
 --%>
 
<!-- Present one to many display --> 

 
<div class="jumbotron">
 
<div class="row">

<c:forEach var="category" items="${categoryList}">
<div class="dropdown">
	<div class="col-md-2">
 <button class="dropbtn">${category.categoryName}</button>
  <div class="dropdown-content">
  	<div class="row">
    	<a href="#"><c:forEach var="subCategory" items="${category.subCategory}">
		<div class="col-md-12">
			<ul>
				<li>
					${subCategory.subCategoryName}
				</li>
			</ul>
		</div>
	</c:forEach> </a>
    </div>
  </div>
  </div>
</div>
</c:forEach>
</div>
</div>
 