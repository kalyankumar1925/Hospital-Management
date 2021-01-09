<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div align="center" class="banner_div">
	<h1>Edit Labtests</h1>
	<form:form action="savelabtests" method="post" modelAttribute="labtests">
		<table border="1" cellpadding="5">
			<tr>
				<td>Id:</td>
				<td>
					${labtests.lid}
					<form:hidden path="lid"/>
				</td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><form:input path="name"/></td>
			</tr>
			
			
			<tr>
				<td colspan="2"><input type="submit" value="Save"/></td>
			</tr>
		</table>
	</form:form>
  </div>
</body>
</html>