<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@include file="header.jsp" %>

<div ng-app="myApp" style="margin-bottom: 15px">

<div class="container" ng-controller="myController">
    <div class="row">
    	<input class="form-control" type="hidden" ng-model="search" /> 
    	      
        <div ng-repeat="productlist in myscope | filter:search" class="col-md-4 col-sm-6 col-xs-12">
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="resources/productImages/productImage-{{productlist.productId}}.jpg" style="margin:auto;max-height: 200px;min-height: 200px" class="img-responsive" alt="{{productlist.productName}}">
                <div>
                  <a href="addtocart-{{productlist.productId}}" class="btn">Add to Cart</a>
                  <a href="addtowishlist-{{productlist.productId}}" class="btn">Add to WishList</a>
                </div>
              </div>
              <h3><a href="viewProductById-{{productlist.productId}}">{{productlist.productName}}</a></h3>
              <div class="pi-price">{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></div>
              <a href="#" class="btn add2cart">Buy Now</a>
            </div>
        </div>  
        
     </div>

</div>
</div>
<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productListByJson};

});
</script>

<%@include file="footer.jsp" %>