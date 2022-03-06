<%@ page import="java.sql.*" %>
<%@ page import = "com.DB.DBConnectivity" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Ebook</title>
	
	<!-- To include css file -->
	<%@include file="all_component/all_css.jsp"%>
	<style>
	.bac-image{
	width:100%;
	height:40vh;
	background-repeat:no-repeat;
	background-size:cover;
	background-image:url('all_component/image/firstpage_image.jpg')
	}
	
	.crd-ho:hover{
	background-color:#e7e6e6;
	}
	</style>
	
	
</head>
<body style='background-color:#f2f2f2;'>
	<%@include file="all_component/navbar.jsp" %>
	
	

	
	
	<div class="container-fluid bac-image ml-1">
		<h2 class="text-center text-danger">Ebook Management System</h2>
	</div>
	
	<div class="container">
		<h2 class="text-center p-4">Recent Book</h2>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
						<img src="all_component/image/book1.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
						<p >Single & Single</p>
						<p >John Le Carre</p>
						<p >Categories:New</p>
						<div class="row">
						<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-primary btn-sm ml-1">299</a>
						</div>
							
					</div>		
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
					<img src="all_component/image/book2.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
					<p >Single & Single</p>
					<p >John Le Carre</p>
					<p >Categories:New</p>
					<div class="row text-center">
					<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
					<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
					<a href="" class="btn btn-primary btn-sm ml-1">399</a>
					</div>
							
					</div>		
				</div>
					
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
					<img src="all_component/image/book3.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
					<p >A Single Shard</p>
					<p >Linda Sue Park</p>
					<p >Categories:New</p>
					<div class="row text-center">
					<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
					<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
					<a href="" class="btn btn-primary btn-sm ml-1">499</a>
					</div>
							
					</div>		
				</div>
					
			</div>
					
	</div>
	
	
		<div class="text-center p-4">
				
				<a href="" class="btn btn-primary">View All</a>
				
		</div>
	
	
	
			
	<h2 class="text-center p-4">New Book</h2>
	
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
						<img src="all_component/image/book4.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
						<p >Single & Single</p>
						<p >John Le Carre</p>
						<p >Categories:New</p>
						<div class="row">
						<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-primary btn-sm ml-1">299</a>
						</div>
							
					</div>		
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
					<img src="all_component/image/book5.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
					<p >Single & Single</p>
					<p >John Le Carre</p>
					<p >Categories:New</p>
					<div class="row text-center">
					<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
					<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
					<a href="" class="btn btn-primary btn-sm ml-1">399</a>
					</div>
							
					</div>		
				</div>
					
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
					<img src="all_component/image/book6.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
					<p >A Single Shard</p>
					<p >Linda Sue Park</p>
					<p >Categories:New</p>
					<div class="row text-center">
					<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
					<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
					<a href="" class="btn btn-primary btn-sm ml-1">499</a>
					</div>
							
					</div>		
				</div>
					
			</div>
			
			
			
				
	</div>
	
	<div class="text-center p-4">
				
				<a href="" class="btn btn-primary">View All</a>
				
		</div>
		  
		  <h2 class="text-center p-4">Old Book</h2>
		  <div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
						<img src="all_component/image/book1.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
						<p >Single & Single</p>
						<p >John Le Carre</p>
						<p >Categories:New</p>
						<div class="row">
						<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
						<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-primary btn-sm ml-1">299</a>
						</div>
							
					</div>		
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
					<img src="all_component/image/book2.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
					<p >Single & Single</p>
					<p >John Le Carre</p>
					<p >Categories:New</p>
					<div class="row text-center">
					<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
					<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
					<a href="" class="btn btn-primary btn-sm ml-1">399</a>
					</div>
							
					</div>		
				</div>
					
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
				
					<div class="card-body text-center">
					<img src="all_component/image/book3.jpg"  class="img-thumbnail" style='width:150px;height:200px;'>
					<p >A Single Shard</p>
					<p >Linda Sue Park</p>
					<p >Categories:New</p>
					<div class="row text-center">
					<a href="" class="btn btn-primary btn-sm ml-1"><i class="fa-solid fa-cart-shopping"></i>Add Cart</a>
					<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
					<a href="" class="btn btn-primary btn-sm ml-1">499</a>
					</div>
							
					</div>		
				</div>
					
			</div>
	
	</div>
	<div class="text-center p-4">
				
				<a href="" class="btn btn-primary">View All</a>
				
		</div>
	
	</div>
	
	
	<%@include file="all_component/footer.jsp" %>

</body>
</html>