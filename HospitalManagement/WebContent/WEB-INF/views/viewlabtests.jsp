<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View LabTest</title>
</head>
<body>

<div align="center" class="banner_div">

	<h1>Labtests List</h1>
	
	<a href="new_labtest" style="margin-right: 15%">Add New Labtest</a>&nbsp;&nbsp;
	<a href="">Back to Home</a><br><br><br>
     <table border="1">
		<tr>
			<th>ID</th>
			<th>Test Name</th>
			
			
		</tr>
		<c:forEach items="${labtestslist}" var="labtests">
		<tr>
			<td>${labtests.lid}</td> 
			<td>${labtests.name}</td> 
			
			
			<td>
				<a href="editlabtests?lid=${labtests.lid}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="deletelabtests?lid=${labtests.lid}">Delete</a>
			</td>
		</tr>	
		</c:forEach>
</table>
</div>

</body>
</html>