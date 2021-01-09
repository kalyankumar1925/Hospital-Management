<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Patient</title>
</head>
<body>
<div align="center">
	<h1>Search Results</h1>
	<table border="1" >
		<tr>
			<th>ID</th>
			<th>DoctorName</th>
			<th>Date</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Description</th>
			<th>PatientName</th>
			<th>contact</th>
		</tr>
		<c:forEach items="${list}" var="patient">
		<tr>
			<td>${patient.id}</td> 
			<td>${patient.doctorName}</td> 
			<td>${patient.date}</td> 
			<td>${patient.age}</td> 
			<td>${patient.gender}</td> 
			<td>{patient.description}</td>
			<td>{patient.patientName}</td>
			<td>{patient.contact}</td>
		</tr>	
		</c:forEach>
	</table>
</div>

</body>
</html>