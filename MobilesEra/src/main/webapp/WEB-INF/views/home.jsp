<%@ include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/button.css" />
<%@ include file="slider.jsp" %>

<div ng-app="myApp" style="margin-top:10px;margin-bottom: 15px;">

<div class="container" ng-controller="myController">
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
</script>
 

 <%@ include file="footer.jsp" %>