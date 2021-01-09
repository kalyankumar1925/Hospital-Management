<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Doctor</title>
<style>
    .banner_div{
        background-image: url('https://www.serviceonemarketing.com/wp-content/uploads/2018/05/2a104153d4f601d168bb211ccc2a1fa5.jpg');
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
	<h1>Edit Appointment</h1>
	<form:form action="savepatient" method="post" modelAttribute="patient">
		<table border="1">
			<tr>
				<td>Id:</td>
				<td>
					${patient.id}
					<form:hidden path="id"/>
				</td>
			</tr>
			<tr>
				<td>DoctorName:</td>
				<td><form:input path="doctorName"/></td>
			</tr>
			<tr>
				<td>PatientName:</td>
				<td><form:input path="patientName"/></td>
			</tr>
			<tr>
				<td>Date:</td>
				<td><form:input path="date"/></td>
			</tr>
			<tr>
				<td>Age:</td>
				<td><form:input path="age"/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><form:input path="gender"/></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><form:input path="description"/></td>
			</tr>
			<tr>
				<td>Contact:</td>
				<td><form:input path="contact"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save"/></td>
			</tr>
		</table>
	</form:form>
  </div>
</body>
</html>