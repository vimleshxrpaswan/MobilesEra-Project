<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp" %>


<%-- <div class="container">	
	<div class="row">
	<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
	<div class="form">
		<fieldset>
		<div class="text-center">
			<h2>Register for MobilesEra</h2>
		</div>
		<hr>
		<form:form modelAttribute="user" action="addUser">
			<form:input class="form-control input-lg" type="hidden" path="userId" placeholder="User Id" />
			<form:input class="form-control input-lg" path="username" placeholder="Enter EmailId" autofocus="true" />
			<form:input class="form-control input-lg" type="password" path="password" placeholder="Password" />
			<form:input class="form-control input-lg" path="fname" placeholder="First Name"/>
			<form:input class="form-control input-lg" path="lname" placeholder="Last Name"/>
			<form:input class="form-control input-lg" path="DOB" placeholder="Date of Birth"/>
			<form:input class="form-control input-lg" path="contactNo" placeholder="Contact Number"/>
			<form:input class="form-control input-lg" path="alternateContactNo" placeholder="Alternate Contact Number"/>
			<input type="submit" value="signup" />
			<input type="reset" value="Reset" />
		</form:form>
		</fieldset>
	</div>	
	</div>
	</div>
</div>
 --%>


<!-- Designed registration Page -->
<div class="container">
    
<div class="row" style="margin-top:30px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form:form modelAttribute="user" action="addUser">
			<fieldset>
				<h2>Register for MobilesEra</h2>
				<hr>
				<div class="form-group">
                    <form:input class="form-control input-lg" type="hidden" path="userId" placeholder="User Id" />
				</div>
				<div class="form-group">
                    <form:input type="email" class="form-control input-lg" path="username" placeholder="Email Id" autofocus="true" required="true"/>
				</div>
				<div class="form-group">
                    <form:input type="password" class="form-control input-lg" path="password" placeholder="Password" required="true"/>
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="fname" placeholder="First Name" required="true"/>
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="lname" placeholder="Last Name" required="true"/>
				</div>
				<div class="form-group">
                    <form:input type="date" class="form-control input-lg" path="DOB" placeholder="Date of Birth" required="true"/>
				</div>
				<div class="form-group">
                    <form:input type="tel" class="form-control input-lg" path="contactNo" placeholder="Contact Number" required="true"/>
				</div>
				<div class="form-group">
                    <form:input type="tel" class="form-control input-lg" path="alternateContactNo" placeholder="Alternate Contact Number"/>
				</div>				
				<hr style="height:2px;border-width:0;color:gray;background-color:gray">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">                        
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="sign Up" />
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">						
						<input type="reset" class="btn btn-lg btn-danger btn-block" value="Reset" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>

</div>  












<%@include file="footer.jsp" %>

