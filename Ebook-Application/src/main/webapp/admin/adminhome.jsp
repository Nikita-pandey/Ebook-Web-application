<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="all_css.jsp" %>
<style>
a:hover{
	text-decoration: none;
	color:black;
}


</style>
</head>
<body>
<%@include file="navbar.jsp" %>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-circle-plus fa-3x text-primary"></i>
							<h4>Add Books</h4>
							-----------------
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
					<div class="card-body text-center ">
						<i class="fa-solid fa-book fa-3x text-danger"></i>
						<h4>All Books</h4>
						-----------------
					</div>
					</div>
				</a>
				
			</div>
			
			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center ">
							<i class="fa-solid fa-cart-arrow-down fa-3x text-warning"></i>
							<h4>Orders</h4>
							-----------------
						</div>
					</div>
				</a>
				
			</div>
			
			<div class="col-md-3">
				<a href="logout.jsp">
					<div class="card">
					<div class="card-body text-center ">
						<i class="fa-solid fa-arrow-right-from-bracket fa-3x text-primary"></i>
						<h4>Logout</h4>
						-----------------
					</div>
					</div>
				</a>
				
			</div>
			
		</div>
	</div>
	
	<div style="margin-top: 300px;">
		<%@include file="footer.jsp" %>
	</div>

</body>
</html>