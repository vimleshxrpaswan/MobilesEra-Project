<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp" %>
<div class="form">
<form:form class="form" modelAttribute="user" action="addUser">
	<form:input class="form-control" type="hidden" path="userId" placeholder="User Id" />
	<form:input class="form-control" path="username" placeholder="Enter EmailId" autofocus="true" />
	<form:input class="form-control" type="password" path="password" placeholder="Password" />
	<form:input class="form-control" path="fname" placeholder="First Name"/>
	<form:input class="form-control" path="lname" placeholder="Last Name"/>
	<form:input class="form-control" path="DOB" placeholder="Date of Birth"/>
	<form:input class="form-control" path="contactNo" placeholder="Contact Number"/>
	<form:input class="form-control" path="alternateContactNo" placeholder="Alternate Contact Number"/>
	<input type="submit" value="signup" />
	<input type="reset" value="Reset" />
</form:form>
</div>

















<%@include file="footer.jsp" %>

