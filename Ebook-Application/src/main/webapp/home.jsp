<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User:HOME</title>
</head>
<body>
<!-- Logged-in user is a valid user ,print user name-->
							<c:if test="${not empty userobj }">
							<h1>userobj.name</h1>
							<h1>userobj.email</h1>
							</c:if>
</body>
</html>