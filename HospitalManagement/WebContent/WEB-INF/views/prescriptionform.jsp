<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prescription form</title>
</head>
<body>
	<h1>Provide your Prescription</h1>
	<div align="center">
		<form:form action="saveprescription" method="post" modelAttribute="prescription">
  		<div class="container">
    		<h1>Prescribe the patient</h1>
     			<table border="1">
					<tr>
						<td>PId:</td>
						<td>
							<input name="id" id="id" value=${getid}>
						</td>
					</tr>
					<tr>
						<td>Medicine:</td>
						<td><form:input path="medicine" /></td>
					</tr>
					<tr>
						<td>Labtest:</td>
						<td><form:input path="labtest"/></td>
					</tr>
				</table>
   			 <button onclick="sendtopharmorpath" type="submit" class="registerbtn">Prescribe</button>
		</div>
	</form:form>
	</div>
</body>
</html>