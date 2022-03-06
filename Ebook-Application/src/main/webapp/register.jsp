<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook Registration</title>
</head>
<%@include file="all_component/all_css.jsp"%>
<%@include file="all_component/navbar.jsp" %>
<body style='background-color:#f0f1f2;'>
<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
				<div class='card mt-4'>
					<div class="card-body">
						
							<h4 class="text-center">Registration Page</h4>
							<c:if test="${not empty succmsg}">
							<p class="text-center text-success">${succmsg}</p>
							<!-- below line will remove the previous succ and failed msg on the registration page -->
							<c:remove var="succmsg" scope="session"/>
							</c:if>
							
							<c:if test="${not empty failmsg}">
							<p class="text-center text-danger">${failmsg}</p>
							<c:remove var="failmsg" scope="session"/>
							</c:if>
							
							
						
						
						<form action="Register" method="post">
								<div class="form-group">
							    <label for="fullname">Enter Full Name</label>
							    <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter full name">
							    </div>
							    
							  <div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email" required="required">    
							  </div>
							  
							  <div class="form-group">
							    <label for="phoneno">Enter Phone number</label>
							    <input type="tel" class="form-control" id="phoneno" name="phoneno"  placeholder="Enter Phone number" required="required">
							   </div>
							  
							  <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password" required="required">
							  </div>
							  
							  <div class="form-check">
							  <input type="checkbox" class="form-check-input" id="exampleCheck1" name="terms" value="on">
							  	<label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
							    
							    
							  </div>
							  
							  
							  
							  <div class="mt-2">
							  	<button type="submit" class="btn btn-primary">Submit</button>
							  </div>
							  
						</form>
												
					</div>
				</div>
		</div>
	</div>
</div>
<%@include file="all_component/footer.jsp" %>

</body>
</html>