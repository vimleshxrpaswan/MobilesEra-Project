<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@include file="header.jsp" %>

<div ng-app="myApp">
<div class="container" ng-controller="myController">
        <div class="row">
        <ul class="thumbnails">
      
            <div ng-repeat="productlist in myscope | filter:search" class="col-md-3 col-sm-4 col-xs-6">
                <div class="thumbnail">
                    <img src="resources/productImages/productImage-{{productlist.productId}}.jpg" style="width:200px;height:200px" alt="img not uploaded"/>
                    <div class="caption">
                         <h4>{{productlist.productName}}</h4>
                        <p>{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></p>
                        <p align="center"><a href="viewProductById-{{productlist.productId}}" title="online shopping store For Mobiles, Laptops & Tabs " class="btn btn-primary btn-block">View Product</a>
                        </p>
                    </div>
                </div>
            </div>
          
       </ul>
    </div>
</div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productListByJson}
});
</script>

<%@include file="footer.jsp" %>