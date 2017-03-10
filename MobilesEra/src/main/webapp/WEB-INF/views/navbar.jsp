<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="resources/css/button.css"/>
</head>
<body>


<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">MobilesEra</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">  
      <ul class="nav navbar-nav" >
      <li>
      <a href="#">Categories<b class="caret"></b></a>
      <%-- <div class="dropdown-content">
      <div class="row">
<c:forEach var="category" items="${categoryList}">
<div class="dropdown">
	<div class="col-md-2">
  <button class="dropbtn">${category.categoryName}</button>
  <div class="dropdown-content">
  	<div class="row">
    	<a href="#"><c:forEach var="subCategory" items="${category.subCategory}">
		<div class="col-md-12"><ul><li>
			${subCategory.subCategoryName}</li></ul>
		</div>
	</c:forEach> </a>
    </div>
  </div>
  </div>
</div>
</c:forEach>
</div>
</div> --%>
      
      </li>
      </ul>
      <form class="navbar-form navbar-left">
      <div class="input-group">      
        <input type="text" class="form-control" placeholder="Search">        
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
      </form>
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
      
    </div>
  </div>
</nav>
<br><br><br>

<script src="resources/js/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.min.js" ></script>
<script src="resources/js/angular.min.js" ></script>
</body>
</html>