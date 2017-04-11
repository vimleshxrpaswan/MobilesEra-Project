<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css" />
 
<div class="container" style="margin-top: 20px">

<div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Product Form</h1>
 	</div>
 	<br>
 	<div class="panel-body form">	
		<form:form modelAttribute="product" action="addProduct" enctype="multipart/form-data">
				<form:input type="hidden" path="productId" placeholder="Product Id" /> 
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:label path="productName">Enter the Name of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:input class="form-control" path="productName" placeholder="Product Name" autofocus="true" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productName" cssClass="error" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productColor">Enter the Colour of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productColor" placeholder="Product Colour" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productColor" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productRam">Enter the RAM of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productRam" placeholder="Product RAM" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productRam" cssClass="error" />
			</div>
		</div>
		<br>		
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productWeight">Enter the Weight of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productWeight" placeholder="Product Weight" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productWeight" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productWarranty">Enter the Warranty of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productWarranty" placeholder="Product Warranty" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productWarranty" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productScreenSize">Enter the Screen Size of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productScreenSize" placeholder="Product Screen Size" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productScreenSize" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productNetworkType">Enter the Network Type of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productNetworkType" placeholder="Product Network Type" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productNetworkType" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productBatteryCapacity">Enter the Battery Capacity of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productBatteryCapacity" placeholder="Product Battery Capacity" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productBatteryCapacity" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productCamera">Enter the Camera of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productCamera" placeholder="Product Camera" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productCamera" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productSecondaryCamera">Enter the Secondary Camera of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productSecondaryCamera" placeholder="Product Secondary Camera" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productSecondaryCamera" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productOperatingSystem">Enter the Operating System of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productOperatingSystem" placeholder="Product Operating System" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productOperatingSystem" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productProcessor">Enter the Processor of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productProcessor" placeholder="Product Processor" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productProcessor" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productGraphicsMemory">Enter the Graphics Memory of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productGraphicsMemory" placeholder="Product Graphics Memory" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productGraphicsMemory" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productHardDiskCapacity">Enter the HardDisk Capacity/Internal Memory of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productHardDiskCapacity" placeholder="Product HardDisk Capacity" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productHardDiskCapacity" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productPortType">Enter the Port Type of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productPortType" placeholder="Product Port Type" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productPortType" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productConnectivityFeatures">Enter the Connectivity Features of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productConnectivityFeatures" placeholder="Product Connectivity Features" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productConnectivityFeatures" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productResolution">Enter the Screen Resolution of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productResolution" placeholder="Product Resolution" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productResolution" cssClass="error" />
			</div>
		</div>
		<br>			
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productImage">Choose the Image for Product </form:label>
			</div>
			<div class="form-group col-xs-12 col-sm-4 col-md-4">                         
    			<label class="custom-file">
    				<form:input path="productImage" accept=".jpg,.jpeg,.png" type="file" name="file" class="custom-file-input" ></form:input>    				
    				<span class="custom-file-control"></span>
   				</label>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productPrice">Enter the Price of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productPrice" placeholder="Product Actual Price" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productDiscount">Enter the Discount for Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productDiscount" placeholder="Product Discount" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productMadeCountry">Enter the Country Name Where Product Made </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productMadeCountry" placeholder="Product MadeCountry" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productMadeCountry" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productStock">Enter the Stock of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productStock" placeholder="Product Stock" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="categoryId">Select Category of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="subCategoryId">Select SubCategory of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="brandId">Select Brand of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="supplierId">Select Supplier of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="text-center col-sm-12 col-xs-12 col-md-12">
				<button class="btn btn-success" type="submit"  >${btnLabel} <span class="glyphicon glyphicon-plus"></span></button>
				<button class="btn btn-danger" type="reset" >Reset <span class="glyphicon glyphicon-repeat"></span></button>
			</div>	
		</div>
</form:form>
 	</div>
 	</div>

<hr>

<!-- Product List -->

 <div ng-app="myApp">
 <div class="panel panel-default">
 <div class="panel-heading text-center">
 	<h1>Product List</h1>
 </div>
 
 <div class="panel-body table-responsive">
 <div class="row">	
 	<div class=" col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="search..." /> 		
 	</div>
 </div>
 <br>
 <table class="table" ng-controller="myController">
<thead>
<tr>
<th role="button" ng-click="orderByMe('productName')"><center>Name</center></th>
<th role="button" ng-click="orderByMe('productPrice')">Actual Price</th>
<th role="button" ng-click="orderByMe('productDiscount')">Discount</th>
<th role="button" ng-click="orderByMe('productMadeCountry')"> Made In Country</th>
<th role="button" ng-click="orderByMe('productStock')">Stock</th>
<th role="button" ng-click="orderByMe('categoryName')">Category</th>
<th role="button" ng-click="orderByMe('subCategoryName')">SubCategory</th>
<th role="button" ng-click="orderByMe('brandName')">Brand</th>
<th role="button" ng-click="orderByMe('supplierName')">Supplier</th>
<th>Product Image</th>
<th>Operations</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="productlist in myscope | filter:search | orderBy:myOrderBy">
<td>{{productlist.productName}}</td>
<td>{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></td>
<td>{{productlist.productDiscount}}</td>
<td>{{productlist.productMadeCountry}}</td>
<td>{{productlist.productStock}}</td>
<td>{{productlist.category.categoryName}}</td>
<td>{{productlist.subCategory.subCategoryName}}</td>
<td>{{productlist.brand.brandName}}</td>
<td>{{productlist.supplier.supplierName}}</td>
<td><img src="resources/productImages/productImage-{{productlist.productId}}.jpg" height="80px" width="80px" alt="img not uploaded"/></td>
<td><a href="updateProductById-{{productlist.productId}}" class="btn btn-warning" data-toggle="tooltip" title="edit" role="button"><i class="fa fa-pencil-square" aria-hidden="true"></i></a>
	<a href="deleteProductById-{{productlist.productId}}" class="btn btn-danger" data-toggle="tooltip" title="Delete" role="button"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a></td>  
</tr>
</tbody>
</table>
</div>
 </div>
</div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productListByJson}
$scope.orderByMe = function(x) {
    $scope.myOrderBy = x;
}
});
</script>

<%@include file="footer.jsp" %>