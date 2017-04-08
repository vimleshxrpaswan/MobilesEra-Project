<%@include file="header.jsp" %>

<div class="container" style="margin-top: 20px">
<div ng-app="myApp">
	<div class="panel panel-default">
 		<div class="panel-heading text-center">
 			<h1>User List</h1>
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
	<th>UserId</th>
	<th>Username</th>
	<th>Password</th>
	<th>Name</th>
	<th>Role</th>
	<th>Status</th> 
	<th><center>Operation</center></th>
</tr>
</thead>
<tbody> 
<tr ng-repeat="ulist in myscope | filter:search ">
	<td>{{ulist.userId}}</td>
	<td>{{ulist.username}}</td>	
	<td>{{ulist.password}}</td>
	<td>{{ulist.fname}} &nbsp; {{ulist.lname}}</td>
	<td>{{ulist.role}}</td>
	<td ng-if="!ulist.enabled"  style="color:red;">Not Active</td><td ng-if="ulist.enabled" style="color:green;">Active</td>
	<td>
		<center><a href="toggleuser-{{ulist.userId}}"><i style="font-size:24px; color:red"  data-toggle="tooltip" title="Enable" ng-if="!ulist.enabled" class="fa">&#xf204;</i></a></center>
		<center><a href="toggleuser-{{ulist.userId}}"><i style="font-size:24px; color:blue"  data-toggle="tooltip" title="Disable" ng-if="ulist.enabled" class="fa">&#xf205;</i></a></center>	
	</td>
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
$scope.myscope= ${userlistbyjson}
});
</script>

<%@include file="footer.jsp" %>