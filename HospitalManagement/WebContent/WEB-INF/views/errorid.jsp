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
		<h2>Invalid Appointment or the consultant doctor yet to be prescribed!!</h2>
		<h3>Please be patience!!</h3>
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