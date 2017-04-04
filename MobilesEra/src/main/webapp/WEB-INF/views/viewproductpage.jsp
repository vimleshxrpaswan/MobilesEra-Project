<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/viewproductpage.css" />

<div ng-app="myApp" ng-controller="myController">
<div class="container">
	<div class="row">
   		<div class="col-xs-6 col-sm-6 item-photo">
        	<img style="max-width:100%;" src="resources/productImages/productImage-{{myscope.productId}}.jpg" alt="product image"/>
        </div>
                <div class="col-xs-5" style="border:0px solid gray">
                    <!-- Seller data and product title -->
                    <h3>{{myscope.productName}}</h3>    
                    <h5 style="color:#337ab7">sold by <a href="#">{{myscope.supplier.supplierName}}</a> · <small style="color:#337ab7">(5054 Sales)</small></h5>

                    <!-- Prices -->
                    <h6 class="title-price"><small>PRODUCT PRICE</small></h6>
                    <h3 style="margin-top:0px;">{{myscope.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></h3>
 
                    <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small>QUANTITY</small></h6>                    
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>                

                    <!-- Shopping Buttons -->
                    <div class="section" style="padding-bottom:20px;">
                        <a href="addtocart-{{myscope.productId}}" class="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add to Cart</a>
                        <a href="#" class="btn btn-warning"><span style="margin-right:20px" class="fa fa-bolt" aria-hidden="true"></span>BUY NOW</a>
                        <h6><a href="addtowishlist-{{myscope.productId}}"><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span> Add to Wishlist </a></h6>
                    </div>
                    
                    <div class="section" style="padding-bottom:20px;">
                    	<h3>Description</h3>
                    	<hr>
                    	<ul>
                    		<li>{{myscope.productRam}}</li>
                    		<li>{{myscope.productColor}}</li>
                    		<li>{{myscope.productWeight}}</li>
                    		<li>{{myscope.productNetworkType}}</li>
                    		<li>{{myscope.productScreenSize}}</li>
                    		<li>{{myscope.productBatteryCapacity}}</li>
                    		<li>{{myscope.productCamera}}</li>
                    		<li>{{myscope.productSecondaryCamera}}</li>
                    		<li>{{myscope.productOperatingSystem}}</li>
                    		<li>{{myscope.productProcessor}}</li>
                    		<li>{{myscope.productGraphicsMemory}}</li>
                    		<li>{{myscope.productHardDiskCapacity}}</li>
                    		<li>{{myscope.productPortType}}</li>
                    		<li>{{myscope.productConnectivityFeatures}}</li>
                    		<li>{{myscope.productResolution}}</li>
                    		<li>{{myscope.productWarranty}}</li>
                    		
                    	</ul>
                    	
                    </div>                                        
                </div>                              
	</div>
</div>

</div>



<script src="resources/js/viewproductpage.js" ></script>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productData}
});
</script>




<%@include file="footer.jsp" %>