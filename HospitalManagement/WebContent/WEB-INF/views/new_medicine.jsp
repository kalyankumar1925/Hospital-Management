<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Medicine</title>
</head>
<body>
  <div align="center" class="banner_div">
	<h1>New Medicine</h1>
	<form:form action="savemedicines" method="post" modelAttribute="medicines">
<table >
			<tr>
				<td>Name:</td>
				<td><form:input path="name" style="margin-bottom:10px;"/></td>
			</tr>
			<tr>
				<td>Quantity:</td>
				<td><form:input path="quantity" style="margin-bottom:10px;"/></td>
			</tr>
			
	</table>
	
			<input type="submit" value="Save"/>

	
	</form:form>
  </div>
</body>
</html>