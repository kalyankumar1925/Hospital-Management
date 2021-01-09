<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New LabTest</title>
</head>
<body>
  <div align="center" class="banner_div">
	<h1>New Labtest</h1>
	<form:form action="savelabtests" method="post" modelAttribute="labtests">
<table >
			<tr>
				<td>Name:</td>
				<td><form:input path="name" style="margin-bottom:10px;"/></td>
			</tr>
			
			
	</table>
	
			<input type="submit" value="Save"/>

	
	</form:form>
  </div>
</body>
</html>