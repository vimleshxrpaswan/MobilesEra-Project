<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css"/>

<div class="container" style="margin-top: 20px">
	<div class="panel panel-default">
    	<div class="panel-heading text-center">
 			<h1>Category Form</h1>
 		</div>
 	<br>
 	<div class="panel-body form">
		<form:form modelAttribute="category" action="addCategory">
			
			<form:input type="hidden" path="categoryId" placeholder="Category Id" /> 
		  <div class="row">
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label  path="categoryName">Enter Category Name</form:label>		
			</div>
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="categoryName" placeholder="Category Name" autofocus="true" />		
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:errors cssClass="error" path="categoryName" />
			</div>
		  </div>
		  <br>
		  <div class="row">
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label  path="categoryDescription">Enter Category Description</form:label>		
			</div>
		  	<div class="col-xs-12 col-sm-4 col-md-4">		
				<form:input class="form-control" path="categoryDescription" placeholder="Category Description" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:errors cssClass="error" path="categoryDescription" />
			</div>	
		  </div>
		  <br>
		  <div class="row">
		  	<div class="col-sm-12 col-md-12">	
		  		<div class="text-center">	
					<button class="btn btn-success" type="submit">${btnLabel} <span class="glyphicon glyphicon-plus"></span></button>
					<button class="btn btn-danger" type="reset" >Reset <span class="glyphicon glyphicon-repeat"></span></button>
				</div>
				
			</div>
		  </div>	
		</form:form>
 	</div>
 	</div>
 
  <hr style="height:2px;border-width:0;color:gray;background-color:gray">
 
<div>
	<div class="panel panel-default">
 		<div class="panel-heading text-center">
 			<h1>Category List</h1>
 		</div>

 <div class="panel-body">
 <section id="search">
  <div class="row">	
 	<div class="col-xs-10 col-md-4 col-sm-3">	
 		<input class="form-control" type="text" ng-model="search" placeholder="Search..." /> 		
 	</div>
 </div>
 </section>
 <br>
 <div class="table-responsive">
 <table class="table" ng-controller="myController">
 <thead>
<tr>
	<th role="button" ng-click="orderByMe('categoryName')"><center>Name <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></center></th>
	<th role="button" ng-click="orderByMe('categoryDescription')"><center>Description <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i></center></th>
	<th>Operations</th>
	
</tr>
</thead>
<tbody> 
<tr ng-repeat="clist in myscope | filter:search | orderBy:myOrderBy">
	<td><center>{{clist.categoryName}}</center></td>
	<td><center>{{clist.categoryDescription}}</center></td>
	<td><a href="updateCategoryById-{{clist.categoryId}}" class="btn btn-warning" data-toggle="tooltip" title="edit" role="button"><i class="fa fa-pencil-square" aria-hidden="true"></i></a>
	<a href="deleteCategoryById-{{clist.categoryId}}" class="btn btn-danger" data-toggle="tooltip" title="Delete" role="button"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a></td>
</tr>
</tbody>
</table>
</div>
</div>
 </div>
</div>
</div>
<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${categoryListByJson}
$scope.orderByMe = function(x) {
    $scope.myOrderBy = x;
}
});
</script>


<%@include file="footer.jsp" %>