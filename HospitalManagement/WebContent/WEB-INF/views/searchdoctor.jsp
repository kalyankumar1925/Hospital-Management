<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Search</title>
</head>
<body>
<div align="center">
	<h1>Search Results</h1>
	<table border="1" >
		<tr>
			<th>ID</th>
			<th>UserName</th>
			<th>Email</th>
			<th>Specialist</th>
			<th>Address</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${list}" var="doctor">
		<tr>
			<td>${doctor.id}</td> 
			<td>${doctor.name}</td> 
			<td>${doctor.email}</td> 
			<td>${doctor.specialist}</td> 
			<td>${doctor.address}</td> 
		</tr>	
		</c:forEach>
	</table>
</div>

</body>
</html>