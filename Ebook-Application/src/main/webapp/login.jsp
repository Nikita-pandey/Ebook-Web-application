<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="all_component/all_css.jsp"%>
<%@include file="all_component/navbar.jsp" %>
</head>
<body style='background-color:#f0f1f2;'>
	<div class="container p-4">
	<div class="row">
		<div class="col-md-4 offset-md-4">
				<div class='card mt-4'>
					<div class="card-body">
						
							<h4 class="text-center">Login Page</h4>
							
							<!-- Display mag to user incase of incorrect credentials -->
							<c:if test="${not empty failedmsg }">
								<h5 class="text-center text-danger">${failedmsg}</h5>
								<c:remove var="failedmsg" scope="session"/>
							</c:if>
							
							
						
						
						<form action="login" method="post">
								<div class="form-group">
							    <label for="fullname">Enter Full Name</label>
							    <input type="text" class="form-control" name="email" id="fullname"  placeholder="Enter full name" required="required">
							    </div>
							    
							    <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password" required="required">
							  </div>
							  
							   <div class="mt-2 text-center">
							  	<button type="submit" class="btn btn-primary">Submit</button>
							  	<div class="mt-2 text-center">
							  		<a href="">Create Account</a>
							  	</div>
							  	
							  </div>
							  
							  
						</form>
					</div>
				</div>
	</div>
	</div>
	</div>
	<div style="margin-top:180px;">
	<%@include file="all_component/footer.jsp" %>
	</div>						    

</body>
</html>