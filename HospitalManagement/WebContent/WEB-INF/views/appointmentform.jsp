<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EHealth</title>
<style>
    .banner_div{
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKn3iPyc39vfRb4d0eAwiw5iRezF-imKXetg&usqp=CAU');
        width: 100%;
        height: 100%;
        position:absolute;
         background-size:cover;
        background-repeat:no-repeat;
       
    }
</style>

</head>
<body>
<div class="banner_div">
	<h1 align="center">E-Health System</h1><hr>
	<h2 align="center">Book your Appointment</h2>
	<div align="center">
	 <form:form action="savepatient" method="post" modelAttribute="patient" >
		<table>
			<tbody>
				<tr>
					<td>Doctor Name:</td>
					<td>
						<select name="doctorName" style="width:100%;margin-bottom:10px;">
   							<c:forEach items="${doctorlist}" var="doctor">
        						<option value="${doctor.name}">${doctor.name}</option>
    						</c:forEach>
						</select>
					</td>
				<tr>
					<td><label>PatientName:</label></td>
					<td><form:input path="patientName" style="margin-bottom:10px;"/></td>
				</tr>
				<tr>
					<td><label>Date:</label></td>
					<td><form:input path="date" style="margin-bottom:10px;"/></td>
				</tr>
				<tr>
					<td><label>Age:</label></td>
					<td><form:input path="age" style="margin-bottom:5px;"/></td>
				</tr>
				<tr>
					<td><label>Gender:</label></td>
					<td><form:radiobutton path="gender" value="Male" />Male
					<form:radiobutton path="gender" value="Female" />Female</td>
				</tr>
				<tr>
					<td><label>Description:</label></td>
					<td><form:input path="description" style="margin-bottom:10px;" /></td>
				</tr>
				<tr>
					<td><label>Contact:</label></td>
					<td><form:input path="contact" style="margin-bottom:10px;"/></td>
				</tr>
				
			</tbody>
		</table><br>
		<button >Book Appointment</button>
	 </form:form>
	 <br>
	 <button onclick="goBack();">Go back</button>
	</div>
	</div>
	<script> 
        function goBack() 
        {
            window.history.back();
        }
        
    </script>
</body>
</html>