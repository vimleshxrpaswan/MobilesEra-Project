<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>    
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
<link rel="stylesheet" href="resources/css/header.css"/>
<link rel="stylesheet" href="resources/css/slider.css"/>
<link rel="stylesheet" href="resources/css/style.css"/>
<link rel="stylesheet" href="resources/css/categorynav.css"/>
<link rel="stylesheet" href="resources/css/user-productpage.css"/> 
</head>
<body>

<!-- Navigation Bar Started -->
<nav class="navbar navbar-default navbar-fixed-top" >
      <div class="container">
      	<div class="row row1" id="topbar">        	
            <ul class="largenav pull-right">
                <li class="upper-links"><a class="links" href="/MobilesEra/"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                <li class="upper-links"><a class="links" href="aboutus"><i class="fa fa-info-circle" aria-hidden="true"></i> About Us</a></li>
                <li class="upper-links"><a class="links" href="contactus"><i class="fa fa-phone-square" aria-hidden="true"></i> Contact US</a></li>
                <li class="upper-links"><a class="links" href="faq"><i class="fa fa-question-circle" aria-hidden="true"></i> FAQ's</a></li>
            </ul>
        </div>
        
        <!-- Brand and toggle get grouped for better mobile display -->
        
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-3">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>   
          <a class="navbar-brand" href="/MobilesEra/"><i class="fa fa-mobile" aria-hidden="true"></i> MobilesEra</a>
        </div>
    	
    	
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-3">
          <ul class="nav navbar-nav navbar-right">
            
            <sec:authorize access="hasRole('ROLE_ADMIN')">		
            <li class="dropdown">
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin<span class="caret"></span></a>
            	<ul class="dropdown-menu">
          			<li><a href="categoryPage">Category Page</a></li>
                    <li class="divider"></li>
          			<li><a href="subCategoryPage">SubCategory Page</a></li>
                    <li class="divider"></li>
          			<li><a href="supplierPage">Supplier Page</a></li>
                    <li class="divider"></li>
                    <li><a href="brandPage">Brand Page</a></li>
                    <li class="divider"></li>
                    <li><a href="productPage">Product Page</a></li>
                    <li class="divider"></li>
                    <li><a href="userList">Manage User</a></li>
        		</ul>    
            </li>
            </sec:authorize>
            
            <c:if test="${pageContext.request.userPrincipal.name != null}">
            <sec:authentication var="principal" property="principal" />		
            <li class="dropdown">
            	<a role="button" class="dropdown-toggle" data-toggle="dropdown">Welcome ${principal.username}<span class="caret"></span></a>
                <ul class="dropdown-menu">
          			<li><a href="#">Profile</a></li>
                    <sec:authorize access="hasRole('ROLE_USER')">
                    <li class="divider"></li>                     
          			<li><a href="userWishList"> WishList</a></li>          			
                    <li class="divider"></li>                    
          			<li><a href="userCartList">Cart</a></li>
          			</sec:authorize>                    
        		</ul>
            </li>
           </c:if>
            
            <c:if test="${pageContext.request.userPrincipal.name == null}">        
            	<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
            	<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name == null}">
            	<li><a href="reg"><i class="fa fa-user-plus" aria-hidden="true"></i> Sign Up</a></li>
            </c:if>
            <li>
              <a class="btn btn-default btn-outline btn-circle"  data-toggle="collapse" href="#nav-collapse3" aria-expanded="false" aria-controls="nav-collapse3">Search</a>
            </li>
          </ul>
          <div class="collapse nav navbar-nav nav-collapse" id="nav-collapse3">
            <form class="navbar-form navbar-right" role="search">
              <div class="form-group">
                <input type="text" class="form-control" ng-model="search" placeholder="Search" />
              </div>
              <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
            </form>
          </div>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
 <!-- Navigation Bar End -->

<!-- Category Navigation Bar Start -->

<%@include file="categorynav.jsp" %>

<!-- Navigation Bar End -->

<script src="resources/js/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.min.js" ></script>
<script src="resources/js/angular.min.js" ></script>
<script src="resources/js/categorynav.js" ></script>
<script src="resources/js/user-productpage.js" ></script>
