<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@include file="header.jsp" %>

<div ng-app="myApp" style="margin-bottom: 15px">

<div class="container" ng-controller="myController">

<ul class="breadcrumb sns-breadcrumb">
  <li><a class="sns-crumb newpager noUnderLineInAnchor" style="font-size: large;color:Blue;text-shadow: 1px 1px 1px white" href="/MobilesEra/">Home</a></li>
  <li><a class="sns-crumb current-page noUnderLineInAnchor" href="userProductPage">Products</a></li>
  <li class="sns-current-crumb">{{browseWord}}</li>
</ul>


	<div class="row">
        
        <div ng-repeat="productlist in myscope | filter:search || browseWord | orderBy:orderkeyword : orderflag" class="col-sm-4 col-xs12 ">
            <article class="col-item">
        		<div class="photo">
        			<div class="options">
        				<a href="addtowishlist-{{productlist.productId}}" class="btn btn-default" data-toggle="tooltip" title="Add to wish list">
        					<i style="color: red" class="fa fa-heart"></i>
        				</a>
        			</div>
        			<div class="options-cart">
        				<a href="addtocart-{{productlist.productId}}" class="btn btn-default" title="Add to cart">
        					<span class="fa fa-shopping-cart"></span>
        				</a>
        			</div>
        			<a href="viewProductById-{{productlist.productId}}"> <img src="resources/productImages/productImage-{{productlist.productId}}.jpg" style="margin:auto; max-height:250px; ;min-height: 250px" class="img-responsive" alt="Product Image" /> </a>
        		</div>
        		<div class="info">
        			<div class="row">
        				<div class="price-details col-md-6">
        					<p class="details">
        						<a href="viewProductById-{{productlist.productId}}">{{productlist.productName}}</a>
        					</p>
        					<a href="cart" class="btn btn-warning"><i class="fa fa-bolt" aria-hidden="true"></i> Buy Now</a>
        					<span class="price-new">{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></span>
        				</div>
        			</div>
        		</div>
        	</article>
            
        </div>
       
	</div>




</div>
</div>
<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productListByJson};

var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;
    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};
$scope.browseWord = getUrlParameter('browse');

});


/*Tooltip*/
$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});
</script>

<%@include file="footer.jsp" %>