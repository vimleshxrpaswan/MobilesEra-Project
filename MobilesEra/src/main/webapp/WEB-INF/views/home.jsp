<%@ include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/button.css" />

<%@ include file="slider.jsp" %>

<!--Item slider text-->
<div class="container">
  <div class="row" id="slider-text">
    <div class="col-md-6" >
      <h2><a href="userProductPage?browse=mobile" style="text-decoration: none; color: black;">Mobiles</a></h2>
    </div>
  </div>
</div>

<!-- Item slider-->
<div class="container-fluid" ng-controller="myController">

  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
      <div class="carousel carousel-showmanymoveone slide" id="itemslider">
        <div class="carousel-inner">

          <div class="item active" ng-repeat="productlist in myscope | filter:'Mobile' | filter:search ">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="viewProductById-{{productlist.productId}}"><img src="resources/productImages/productImage-{{productlist.productId}}.jpg" style="max-height: 200px;min-height: 200px; width: auto" class="img-responsive center-block"></a>
              <h4 class="text-center">{{productlist.productName}}</h4>
              <h5 class="text-center">{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></h5>
            </div>
          </div>
   
        </div>     
      </div>
    </div>
  </div>
</div>
<!-- Item slider end-->



<!--Item slider text-->
<div class="container">
  <div class="row" id="slider-text">
    <div class="col-md-6" >
      <h2><a href="userProductPage?browse=laptops" style="text-decoration: none; color: black;">Laptops</a></h2>
    </div>
  </div>
</div>

<!-- Item slider-->
<div class="container-fluid" ng-controller="myController">

  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
      <div class="carousel carousel-showmanymoveone slide" id="itemslider">
        <div class="carousel-inner">

          <div class="item active" ng-repeat="productlist in myscope | filter:'Laptops' | filter:search ">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="viewProductById-{{productlist.productId}}"><img src="resources/productImages/productImage-{{productlist.productId}}.jpg" style="max-height: 200px;min-height: 200px; width: auto" class="img-responsive center-block"></a>
              <h4 class="text-center">{{productlist.productName}}</h4>
              <h5 class="text-center">{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></h5>
            </div>
          </div>
   
        </div>        
      </div>
    </div>
  </div>
</div>
<!-- Item slider end-->



<!--Item slider text-->
<div class="container">
  <div class="row" id="slider-text">
    <div class="col-md-6" >
      <h2><a href="userProductPage?browse=tabs" style="text-decoration: none; color: black;">Tabs</a></h2>
    </div>
  </div>
</div>

<!-- Item slider-->
<div style="margin-bottom: 20px;" class="container-fluid" ng-controller="myController">

  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
      <div class="carousel carousel-showmanymoveone slide" id="itemslider">
        <div class="carousel-inner">

          <div class="item active" ng-repeat="productlist in myscope  | filter:'tabs' | filter:search ">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="viewProductById-{{productlist.productId}}"><img src="resources/productImages/productImage-{{productlist.productId}}.jpg" style="max-height: 200px;min-height: 200px; width: auto" class="img-responsive center-block"></a>
              <h4 class="text-center">{{productlist.productName}}</h4>
              <h5 class="text-center">{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></h5>
            </div>
          </div>
   
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Item slider end-->


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