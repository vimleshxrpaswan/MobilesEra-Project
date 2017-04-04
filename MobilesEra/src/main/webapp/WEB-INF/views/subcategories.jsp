<%@include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css" />

<div class="container" style="margin-top: 20px"> 
	<div class="panel panel-default">
    	<div class="panel-heading text-center">
 			<h1>SubCategory Form</h1>
 		</div>
 	<br>
 	<div class="panel-body form">
		<form:form modelAttribute="subCategory" action="addSubCategory">
			<form:input type="hidden" path="subCategoryId" placeholder="SubCategory Id" />
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:label path="subCategoryName">Enter SubCategory Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:input class="form-control" path="subCategoryName" placeholder="SubCategory Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">	
					<form:errors path="subCategoryName" cssClass="error"/>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:label path="subCategoryDescription">Enter Description of SubCategory</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:input class="form-control" path="subCategoryDescription" placeholder="SubCategory Description" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">	
					<form:errors path="subCategoryDescription" cssClass="error"/>
				</div>
			</div>
			<br>
				<div class="row">
					<div class="col-xs-12 col-sm-4  col-md-4"> 
						<form:label path="categoryId">Select Category of SubCategory</form:label>
					</div>	 
					<div class="col-xs-12 col-sm-4  col-md-4">					
						<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
					</div>
				</div>		
			<br>
		<div class="row">
			<div class="text-center col-xs-12 col-sm-12  col-md-12">
				<button class="btn btn-success" type="submit">${btnLabel} <span class="glyphicon glyphicon-plus"></span></button>
				<button class="btn btn-danger" type="reset" >Reset <span class="glyphicon glyphicon-repeat"></span></button>
			</div>	
		</div>
	</form:form>
 	</div>
	</div> 

<hr style="height:2px;border-width:0;color:gray;background-color:gray">

 <div ng-app="myApp">
 <div class="panel panel-default">
 	<div class="panel-heading text-center">
 		<h1>SubCategory List</h1>
 	</div>
 <br>
<div class="panel-body table-responsive">
<div class="row">	
 	<div class="col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="Search..." /> 		
 	</div>
 </div>
 <br>
<table class="table" ng-controller="myController">
<tr>
<th>Name</th>
<th>Description</th>
<th>Category</th>
<th>Update SubCategory</th>
<th>Delete SubCategory</th> 
</tr>
<tr ng-repeat="subcategorylist in myscope | filter:search">
<td>{{subcategorylist.subCategoryName}}</td>
<td>{{subcategorylist.subCategoryDescription}}</td>
<td>{{subcategorylist.category.categoryName}}</td>
<td><a href="updateSubCategoryById-{{subcategorylist.subCategoryId}}" class="btn btn-warning" role="button">Update</a></td>
<td><a href="deleteSubCategoryById-{{subcategorylist.subCategoryId}}" class="btn btn-danger" role="button">Delete</a></td>
</tr>
</table>
 </div>
</div>
</div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${subCategoryListByJson}
});
</script>

<%@include file="footer.jsp" %>