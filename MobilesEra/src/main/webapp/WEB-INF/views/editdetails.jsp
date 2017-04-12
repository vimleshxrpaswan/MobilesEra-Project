<%@include file="header.jsp" %>

<div class="container">
    
<div class="row" style="margin-top:30;margin-bottom:60px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form:form modelAttribute="user" action="updateUser">
			<fieldset>
				<h2>Update Your Details</h2>
				<hr>
				<div class="form-group">
                    <form:input class="form-control input-lg" type="hidden" path="userId" placeholder="User Id" />                    
				</div>
				<div class="form-group">
                    <form:input class="form-control input-lg" type="hidden" path="role" placeholder="User Role" />                    
				</div>
				<div class="form-group">
                    <form:input class="form-control input-lg" type="hidden" path="enabled" />                    
				</div>
				<div class="form-group">
                    <form:input type="email" class="form-control input-lg" path="username" placeholder="Email Id" readonly="true" />
                </div>                    
				<div class="form-group">
                    <form:input type="password" class="form-control input-lg" path="password" autofocus="true"  placeholder="Password" />
                </div>                
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="fname" placeholder="First Name" />
                </div>
               
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="lname" placeholder="Last Name" />
                </div>
                
				<div class="form-group">
                    <form:input type="date" class="form-control input-lg" path="DOB" placeholder="Date of Birth" />
				</div>
				<div class="form-group">
                    <form:input type="tel" class="form-control input-lg" path="contactNo" placeholder="Contact Number" />
                </div>                
				<div class="form-group">
                    <form:input type="tel" class="form-control input-lg" path="alternateContactNo" placeholder="Alternate Contact Number"/>
				</div>				
				<hr style="height:2px;border-width:0;color:gray;background-color:gray">
				<div class="row">					
					<div class="col-xs-6 col-sm-6 col-md-6">						
						<input type="reset" class="btn btn-lg btn-danger btn-block" value="Reset" />
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">                        
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="ok" />
					</div>					
				</div>
			</fieldset>
		</form:form>
	</div>
</div>

</div>  


<%@include file="footer.jsp" %>