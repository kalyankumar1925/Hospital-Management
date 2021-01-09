<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Health</title>
<style>
    .banner_div{
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_RAl3IFTC9MDrHaI9I5mIVUdlSjIl-b6qzw&usqp=CAU');
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
	<h1>List Of Appointments</h1>
	<form method="get" action="searchappointment">
		<input type="text" name="keyword">
		<input type="submit" value="Search">
	</form><br>
	<table border="1" >
		<tr>
			<th>ID</th>
			<th>DoctorName</th>
			<th>Date</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Description</th>
			<th>Contact</th>
			<th>PatientName</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${appointmentlist}" var="patient">
		<tr>
			<td>${patient.id}</td> 
			<td>${patient.doctorName}</td> 
			<td>${patient.date}</td> 
			<td>${patient.age}</td> 
			<td>${patient.gender}</td>
			<td>${patient.description}</td>
			<td>${patient.contact}</td>
			<td>${patient.patientName}</td> 
			<td>
				<a href="update?id=${patient.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="remove?id=${patient.id}">Delete</a>
			</td>
		</tr>	
		</c:forEach>
	</table><br/>
	<button onclick="goBack();"> Back to Home</button>
</div>
	
</body>
	<script>
	function goBack() 
   {
    window.history.back();
	}
	</script>
</html>