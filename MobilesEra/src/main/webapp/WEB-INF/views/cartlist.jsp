<%@include file="header.jsp" %>

<!-- Cart List Form is starting from here -->
<div class="container">
<div ng-app="myApp">
<div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Your Cart</h1>
 	</div>
 
 <div class="panel-body table-responsive">
 <div class="row">	
 	<div class="col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="Search..." /> 		
 	</div>
 </div>
 <br>
<table class="table" ng-controller="myController">
	<tr>
		<th>Product Image</th>
		<th>Product Name</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Total Amount of your All product</th>
		<th>Operations</th>
	</tr>
	<tr ng-repeat="cilist in myscope | filter:search">		
		<td><img src="resources/productImages/productImage-{{cilist.productId}}.jpg" height="100px" width="100px" alt="img not uploaded"/></td>		
		<td>{{cilist.productName}}</td>
		<td>{{cilist.rate}} <i class="fa fa-inr" aria-hidden="true"></i></td>
		<td>{{cilist.quantity}}</td>
		<td>{{cilist.amount}} <i class="fa fa-inr" aria-hidden="true"></i></td>
		<td>
			<a href="#" class="btn btn-warning" role="button">Checkout</a>
			<a href="deleteFromCart-{{cilist.cartItemId}}" class="btn btn-danger" role="button">Cancel</a>
		</td>
	</tr>
</table>
</div>
</div>
</div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${cartListByJson}
});
</script> 

<%@include file="footer.jsp" %>