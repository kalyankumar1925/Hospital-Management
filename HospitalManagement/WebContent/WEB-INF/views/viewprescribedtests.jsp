<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prescribed Tests</title>
</head>
<body>
<h1 align="center">Prescribed tests lists</h1>
<div align="center" style="padding-top:5%">
	<table border="1">
  		<tr>
    		<th>Patient id</th>
    		<th>Prescription</th>
    		<th>LabTest</th>
  		</tr>
  		<c:forEach items="${viewprescribedtests}" var="viewtest">
  			<tr>
  				<td>${viewtest.id}</td>
  				<td>${viewtest.medicine}</td>
  				<td>${viewtest.labtest}</td>
  			</tr>
  		</c:forEach>  
	</table>
</div>
</body>
</html>