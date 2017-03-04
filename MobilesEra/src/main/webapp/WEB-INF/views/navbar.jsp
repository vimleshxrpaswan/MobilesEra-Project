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
<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
<link rel="stylesheet" href="resources/css/navbar.css"/>
</head>
<body>


    <div class="navbar-more-overlay"></div>
	<nav class="navbar navbar-inverse navbar-fixed-top animate">
		<div class="container navbar-more visible-xs">
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search for...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="submit">Submit</button>
						</span>
					</div>
				</div>
			</form>
			
		</div>
		<div class="container">
			<div class="navbar-header hidden-xs">
				<a class="navbar-brand" href="#">MobilesEra</a>
			</div>

			<ul class="nav navbar-nav navbar-right mobile-bar">
				<li>
					<a href="#">
						<span class="menu-icon fa fa-home"></span>
						Home
					</a>
				</li>
				<li>
					<a href="#">
						<span class="menu-icon fa fa-info"></span>
						<span class="hidden-xs">About Us</span>
						<span class="visible-xs">About Us</span>
					</a>
				</li>
			
				<li>
					<a href="#">
						<span class="menu-icon fa fa-phone"></span>						
						<span class="hidden-xs">Contact Us</span>
						<span class="visible-xs">Contact Us</span>
					</a>
				</li>
				
				<li>
					<a href="#">
						<span class="menu-icon fa fa-comments"></span>						
						<span class="hidden-xs">FAQ</span>
						<span class="visible-xs">FAQ</span>
					</a>
				</li>
				<li class="visible-xs">
					<a href="#navbar-more-show">
						<span class="menu-icon fa fa-bars"></span>
						More
					</a>
				</li>
			</ul>
		</div>
	</nav>


<script src="resources/js/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.min.js" ></script>
<script src="resources/js/navbar.js" ></script>
</body>
</html>