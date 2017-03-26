<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css"/>


<div class="container">
	
 	<div class="text-center">
 		<h1>Category Form</h1>
 	</div>
 	<br>
 	<div class="form">
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
 	
 <br>
  <hr style="height:2px;border-width:0;color:gray;background-color:gray">
 

<div ng-app="myApp">
 <div class="text-center">
 	<h1>Category List</h1>
 </div>
 <div class="row">	
 	<div class="input-group col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="Search..." />
 		<div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </div>
 	</div>
 </div>
 <br>
 <div class="table-responsive">
 <table class="table" ng-controller="myController">
<tr>
<th>Name</th>
<th>Description</th>
<th>Update Category</th>
<th>Delete Category</th> 
</tr>
<tr ng-repeat="clist in myscope | filter:search">
<td>{{clist.categoryName}}</td>
<td>{{clist.categoryDescription}}</td>
<td><a href="updateCategoryById-{{clist.categoryId}}" class="btn btn-warning" role="button">Update</a></td>
<td><a href="deleteCategoryById-{{clist.categoryId}}" class="btn btn-danger" role="button">Delete</a></td>
</tr>
</table>
</div>
 </div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${categoryListByJson}
});
</script> 





<%@include file="footer.jsp" %>