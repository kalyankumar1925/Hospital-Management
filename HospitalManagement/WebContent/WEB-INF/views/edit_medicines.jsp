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
	<h1>Edit Medicines</h1>
	<form:form action="savemedicines" method="post" modelAttribute="medicines">
		<table border="1" cellpadding="5">
			<tr>
				<td>Id:</td>
				<td>
					${medicines.mid}
					<form:hidden path="mid"/>
				</td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Quantity:</td>
				<td><form:input path="quantity"/></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Save"/></td>
			</tr>
		</table>
	</form:form>
  </div>
</body>
</html>