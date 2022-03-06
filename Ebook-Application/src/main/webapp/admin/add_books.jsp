<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Addbooks</title>
	<%@include file="all_css.jsp" %>
</head>
<body style="background-color: #f0f2f2;">
<%@include file="navbar.jsp" %>
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
			<div class="card">
			
				<div class="card-body">
					<h4 class="text-center">Add Books</h4>
					<c:if test="${not empty succmsg }">
					<p class="text-center text-success">${succmsg}</p>
					<c:remove var="succmsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty failmsg }">
					<p class="text-center text-danger">${failmsg}</p>
					<c:remove var="failmsg" scope="session"/>
					</c:if>
					
					<!--  form contains binary data hence enctype added -->
					<form action="book_add"  method="post" enctype="multipart/form-data">
								<div class="form-group">
							    <label for="bookname">Book Name</label>
							    <input type="text" class="form-control" id="fullname" name="bookname" placeholder="Enter full name">
							    </div>
							    
							  <div class="form-group">
							    <label for="authorname">Author Name</label>
							    <input type="text" class="form-control" id="authorname" name="authorname" placeholder="Enter Author name">
							    </div>
							  
							  <div class="form-group">
							    <label for="price">Price</label>
							    <input type="number" class="form-control" id="price" name="price"  placeholder="Enter Price" required="required">
							   </div>
							  
							  <div class="form-group">
							    <label for="bookcategories">Book Categories</label>
							    <select id="bookcategories" name="bcat" class="form-control">
							    	<option selected>--select--</option>
							    	<option value="new">New Book</option>
							    	<option value="old">Old Book</option>
							    	<option value="recent">Recent Book</option>
							    </select>
							  </div>
							  
							  <div class="form-group">
							    <label for="bookstatus">Book Status</label>
							    <select id="bookstatus" name="bstatus" class="form-control">
							    	<option selected>--select--</option>
							    	<option value="Active">Active</option>
							    	<option value="Inactive">Inactive</option>
							    </select>
							  </div>
							  
							  <div class="form-group mb-3">
								  <label for="formFile" class="form-label" name="bimg">Upload Photo</label>
								  <input class="form-control" type="file" id="formFile">
								</div>
							  
							  <div class="mt-2">
							  	<button type="submit" class="btn btn-primary">Add</button>
							  </div>
							  
						</form>
				</div>
				</div>
			</div>
		</div>
	
	</div>
	<div style="margin-top: 50px;">
		<%@include file="footer.jsp" %>
	</div>
</body>

</html>