<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Doctor</title>
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
    
</style></head>
<body>
  <div align="center" class="banner_div">
	<h1>New Doctor</h1>
	<form:form action="save" method="post" modelAttribute="doctor">
<table >
			<tr>
				<td>Name:</td>
				<td><form:input path="name" style="margin-bottom:10px;"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email" style="margin-bottom:10px;"/></td>
			</tr>
			<tr>
				<td>Specialist:</td>
				<td><form:input path="specialist" style="margin-bottom:10px;"/></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:input path="address" style="margin-bottom:10px;"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:input path="password" style="margin-bottom:10px;"/></td>
			</tr>
	</table>
	
			<input type="submit" value="Save"/>

	
	</form:form>
  </div>
</body>
</html>