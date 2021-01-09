<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your prescription</title>
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
	<h1>Your prescription</h1>
	<form:form method="post" modelAttribute="prescription">
		<table border="1">
			<tr>
				<td>Patient Id:</td>
				<td>
					${prescription.id}
					<form:hidden path="id"/>
				</td>
			</tr>
			<tr>
				<td>Medicine:</td>
				<td><form:input path="medicine"/></td>
			</tr>
			<tr>
				<td>Labtest:</td>
				<td><form:input path="labtest"/></td>
			</tr>
			
			
		</table>
	</form:form>
  </div>
</body>
</html>