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
	<h1>Your Appointments</h1>
	<table border="1" >
		<tr>
			<th>PatientName</th>
			<th>DoctorName</th>
			<th>Treatment</th>
			<th>Contact</th>
			<th>DateOfAdmit</th>
			<th>Prescription</th>
		</tr>
		<c:forEach items="${appointmenthistory}" var="patienthistory">
		<tr>
			<td>${patienthistory.patientName}</td>
			<td>${patienthistory.doctorName}</td>  
			<td>${patienthistory.description}</td>
			<td>${patienthistory.contact}</td>
			<td>${patienthistory.date}</td>
			<td>
				<a href="viewprescription?id=${patienthistory.id}">View prescription</a>
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