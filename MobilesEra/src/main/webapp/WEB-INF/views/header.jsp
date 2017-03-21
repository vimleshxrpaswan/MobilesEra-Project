<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="resources/css/button.css"/>
<link rel="stylesheet" href="resources/css/header.css"/>
<link rel="stylesheet" href="resources/css/style.css"/>
</head>
<body>


<div class="navbar-wrapper">
    <div class="container-fluid">
        <nav class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">MobilesEra</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <div class="nav navbar-nav">
                        
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
    					<div class="dropdown ">  
      						<ul class="nav navbar-nav" >
      						<li>
      							<a href="#" class="dropbtn myMenu">Categories<b class="caret"></b></a>
      								<div class="dropdown-content">
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
   	  </div>
      </li>
      </ul>
    </div>

                        
                        
                        
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                    	<!-- <li><a href="#"><span class="glyphicon glyphicon-cart"></span> Cart</a></li> -->
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                        	<li><a href="registrationPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
				        	<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
				        </c:if>
				        
				        <c:if test="${pageContext.request.userPrincipal.name != null}">
				        	<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
				        </c:if>
				        
				        
				        <sec:authorize access="hasRole('ROLE_ADMIN')">				        
				        <li class="dropdown">
          					<a class="dropbtn" href="#">Admin <span class="caret"></span></a>
          					<ul class="dropdown-content">
            					<li><a href="categoryPage">Category Page</a></li>
           						<li><a href="subCategoryPage">Subcategory Page</a></li>
            					<li><a href="productPage">Product Page</a></li>
            					<li><a href="supplierPage">Supplier Page</a></li>
            					<li><a href="brandPage">Brand Page</a></li>
         	 				</ul>
        				</li>
        				</sec:authorize>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>


<script src="resources/js/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.min.js" ></script>
<script src="resources/js/angular.min.js" ></script>
<script src="resources/js/header.js" ></script>

