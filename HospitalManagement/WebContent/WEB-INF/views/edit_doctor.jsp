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
	<h1>Edit Doctor</h1>
	<form:form action="save" method="post" modelAttribute="doctor">
		<table border="1" cellpadding="5">
			<tr>
				<td>Id:</td>
				<td>
					${doctor.id}
					<form:hidden path="id"/>
				</td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email"/></td>
			</tr>
			<tr>
				<td>Specialist:</td>
				<td><form:input path="specialist"/></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:input path="address"/></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><form:input path="password"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save"/></td>
			</tr>
		</table>
	</form:form>
  </div>
</body>
</html>