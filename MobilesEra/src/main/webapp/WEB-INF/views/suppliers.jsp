<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css" />

 <div class="container" style="margin-top: 20px">
		
<div class="panel panel-default">
    <div class="panel-heading text-center">
		<h1>Supplier Form</h1>
 	</div>
 <br>	 
 <div class="panel-body form">
<form:form modelAttribute="supplier" action="addSupplier">
		<form:input type="hidden" path="supplierId" placeholder="Supplier Id" /> 
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierName">Enter Supplier Name</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:input class="form-control" path="supplierName" placeholder="Supplier Name" autofocus="true"/>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:errors path="supplierName" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierDescription">Enter Description of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:input class="form-control" path="supplierDescription" placeholder="Supplier Description" />
		</div>	
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierDescription" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierLandmark">Enter Landmark of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:input class="form-control" path="supplierLandmark" placeholder="Supplier Landmark" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierLandmark" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierStreet">Enter Street of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierStreet" placeholder="Supplier Street" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:errors path="supplierStreet" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierCity">Enter City of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:input class="form-control" path="supplierCity" placeholder="Supplier City" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:errors path="supplierCity" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierState">Enter State of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierState" placeholder="Supplier State" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierState" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierCountry">Enter Country of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierCountry" placeholder="Supplier Country" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierCountry" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierEmail">Enter Email of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierEmail" placeholder="Supplier Email" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierEmail" cssClass="error" />
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierContactNo">Enter Contact Number of Supplier</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:input class="form-control" path="supplierContactNo" placeholder="Supplier Contact Number" />
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierContactNo" cssClass="error" />
		</div>	
	</div>
	<br>
	<div class="row">
		<div class="text-center col-xs-12 col-sm-12 col-md-12">
			<button class="btn btn-success" type="submit" >${btnLabel} <span class="glyphicon glyphicon-plus"></span></button>
			<button class="btn btn-danger" type="reset" >Reset <span class="glyphicon glyphicon-repeat"></span></button>
		</div>
	</div>
</form:form>
 </div>
 </div>

<hr style="height:2px;border-width:0;color:gray;background-color:gray">

<!-- Supplier List -->

<div ng-app="myApp">
<div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Supplier List</h1>
 	</div>
 <br>
 <div class="panel-body table-responsive">
  <div class="row">
 	<div class="col-xs-12 col-md-4 col-sm-4">
 		<input class="form-control" type="text" ng-model="search" placeholder="search..." /> 		
 	</div>
 </div>
 <br>
<table class="table" ng-controller="myController">
<thead>
	<tr>
		<th>Name</th>
		<th><center>Description</center></th>
		<th>Landmark</th>
		<th>Street</th>
		<th>City</th>
		<th>State</th>
		<th>Country</th>
		<th>Email</th>
		<th>Contact Number</th>
		<th>Operations</th> 
	</tr>
</thead>
<tbody>
	<tr ng-repeat="supplierlist in myscope | filter:search">
		<td>{{supplierlist.supplierName}}</td>
		<td>{{supplierlist.supplierDescription}}</td>
		<td>{{supplierlist.supplierLandmark}}</td>
		<td>{{supplierlist.supplierStreet}}</td>
		<td>{{supplierlist.supplierCity}}</td>
		<td>{{supplierlist.supplierState}}</td>
		<td>{{supplierlist.supplierCountry}}</td>
		<td>{{supplierlist.supplierEmail}}</td>
		<td>{{supplierlist.supplierContactNo}}</td>		
		<td><a href="updateSupplierById-{{supplierlist.supplierId}}" class="btn btn-warning" data-toggle="tooltip" title="edit" role="button"><i class="fa fa-pencil-square" aria-hidden="true"></i></a>
	<a href="deleteSupplierById-{{supplierlist.supplierId}}" class="btn btn-danger" data-toggle="tooltip" title="Delete" role="button"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a></td>
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
$scope.myscope= ${supplierListByJson}
});
</script>


<%@include file="footer.jsp" %>