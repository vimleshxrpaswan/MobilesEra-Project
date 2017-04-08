<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#secondnavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
        </div>
        <div id="secondnavbar" class="navbar-collapse collapse">
		<c:forEach items="${categoryList}" var="categoryList" >	
			<ul class="nav navbar-nav">
			<li class="dropdown menu-large">
				<a href="userProductPage?browse=${categoryList.categoryName}" class="dropdown-toggle" data-toggle="dropdown">${categoryList.categoryName} <b class="caret"></b></a>				
				<ul class="dropdown-menu megamenu row">
					<c:forEach items="${categoryList.subCategory}" var="subCategory">
					<li class="col-sm-3">					
						<ul>
							<li class="dropdown-header"><a href="userProductPage?browse=${subCategory.subCategoryName}">${subCategory.subCategoryName}</a></li>
							<c:forEach items="${subCategory.brand}" var="brand">
							<li><a href="userProductPage?browse=${brand.brandName}">${brand.brandName}</a></li>							
							</c:forEach>
						</ul>
					</li>
					</c:forEach>				
				</ul>

			</li>
		</ul>
		</c:forEach>
		<ul class="nav navbar-nav">
			<li>
				<a href="userProductPage"><i class="fa fa-product-hunt" aria-hidden="true"></i> All Products</a>
			</li>
		</ul>
		</div>
      </div>
    </div>
