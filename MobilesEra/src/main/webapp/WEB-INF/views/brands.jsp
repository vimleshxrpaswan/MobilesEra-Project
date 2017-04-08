<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css" />

 <div class="container" style="margin-top: 20px">

<div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Brand Form</h1>
 	</div>	
 	<br>
 	<div class="panel-body form">
		<form:form modelAttribute="brand" action="addBrand">
			<form:input type="hidden" path="brandId" placeholder="Brand Id" /> 
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="brandName">Enter the Brand Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="brandName" placeholder="Brand Name" autofocus="true"/>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">	
					<form:errors cssClass="error" path="brandName" />
				</div>	
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="brandDescription">Enter the Description of Brand</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="brandDescription" placeholder="Brand Description" />					
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="brandDescription" />
				</div>
			</div>
			<br>
				<div class="row">
					<div class="col-xs-12 col-sm-4 col-md-4">
						<form:label path="subCategoryId">Select SubCategory of Brand</form:label>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4">
						<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
					</div>
				</div>
			<br>
			<div class="row">
		  	<div class="col-sm-12 col-md-12">	
		  		<div class="text-center">	
					<button class="btn btn-success" type="submit" >${btnLabel} <span class="glyphicon glyphicon-plus"></span></button>
			<button class="btn btn-danger" type="reset" >Reset <span class="glyphicon glyphicon-repeat"></span></button>
				</div>
				
			</div>
		  </div>		
		</form:form>
 </div>
 </div>
 <hr style="height:2px;border-width:0;color:gray;background-color:gray">
 
 <div ng-app="myApp">
 <div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Brand List</h1>
 	</div>
 
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
<th><center>Name</center></th>
<th><center>Description</center></th>
<th>SubCategory</th>
<th>Operations</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="brandlist in myscope | filter:search">
<td><center>{{brandlist.brandName}}</center></td>
<td><center>{{brandlist.brandDescription}}</center></td>
<td>{{brandlist.subCategory.subCategoryName}}</td>
<td><a href="updateBrandById-{{brandlist.brandId}}" class="btn btn-warning" data-toggle="tooltip" title="edit" role="button"><i class="fa fa-pencil-square" aria-hidden="true"></i></a>
	<a href="deleteBrandById-{{brandlist.brandId}}" class="btn btn-danger" data-toggle="tooltip" title="Delete" role="button"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a></td>
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
$scope.myscope= ${brandListByJson}
});
</script>

<%@include file="footer.jsp" %>