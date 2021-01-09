<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Hospital Management</title>
<link href="<c:url value="/WebContent/WEB-INF/CSS/bootstrap.min.css" />"
 rel="stylesheet">
<script src="<c:url value="/WebContent/WEB-INF/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/WebContent/WEB-INF/js/bootstrap.min.js" />"></script>
<style>
    .banner_div{
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSzXnW1MNDIl73BWsZwNiUmZI5NBENJOOu-A&usqp=CAU');
        width: 100%;
        height: 100%;
        position:absolute;
         background-size:cover;
         padding-top:55px;
        background-repeat:no-repeat;
       
    }
</style>
</head>
<body>

<div align="center" class="banner_div">

	<h1>Doctors Record</h1>
	<form method="get" action="search">
		<input type="text" name="keyword">
		<input type="submit" value="Search">
	</form><br>
	<a href="new_doctor" style="margin-right: 15%">Add New Doctor</a>&nbsp;&nbsp;
	<a href="">Back to Home</a><br><br><br>
     <table border="1">
		<tr>
			<th>ID</th>
			<th>UserName</th>
			<th>Email</th>
			<th>Specialist</th>
			<th>Address</th>
			<th>password</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${doctorslist}" var="doctor">
		<tr>
			<td>${doctor.id}</td> 
			<td>${doctor.name}</td> 
			<td>${doctor.email}</td> 
			<td>${doctor.specialist}</td> 
			<td>${doctor.address}</td> 
			<td>${doctor.password}</td>
			<td>
				<a href="edit?id=${doctor.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="delete?id=${doctor.id}">Delete</a>
			</td>
		</tr>	
		</c:forEach>
</table>
</div>

</body>
</html>