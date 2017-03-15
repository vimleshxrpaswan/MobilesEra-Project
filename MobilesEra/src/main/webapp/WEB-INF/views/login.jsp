<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>

<form name="form-login" action="login" method="post">
<input type="text" name="username" placeholder="Enter Your EmailId"/>
<input type="password" name="password" placeholder="Enter Your Password"/>

<input type="submit" value="Signin" />
<input type="reset" value="Reset" />
</form>

<%@include file="footer.jsp" %>