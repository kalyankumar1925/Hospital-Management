<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<body>
	<div align="center">
		<h2>!!!!INVALID INPUT</h2>
		<h2>Please enter valid Credentials</h2>
		<h2>Please check with the userid and correct password!!!</h2>
		<button onclick="goBack();">Go back</button>
	</div>
</body>
<script>
function goBack() 
{
    window.history.back();
}
</script>
</html>