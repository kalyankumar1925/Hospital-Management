<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View medicines</title>
</head>
<body>

<div align="center" class="banner_div">

	<h1>Medicines List</h1>
	
	<a href="new_medicine" style="margin-right: 15%">Add New Medicines</a>&nbsp;&nbsp;
	<a href="">Back to Home</a><br><br><br>
     <table border="1">
		<tr>
			<th>ID</th>
			<th>Medicine Name</th>
			<th>Quantity</th>
			
		</tr>
		<c:forEach items="${medicineslist}" var="medicines">
		<tr>
			<td>${medicines.mid}</td> 
			<td>${medicines.name}</td> 
			<td>${medicines.quantity}</td> 
			
			<td>
				<a href="editmedicine?mid=${medicines.mid}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="deletemedicine?mid=${medicines.mid}">Delete</a>
			</td>
		</tr>	
		</c:forEach>
</table>
</div>

</body>
</html>