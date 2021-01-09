<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<body>
<div class="banner_div">
	<h1 align="center">Login For Pharmacist</h1>
	<div align="center"  style="padding-top:5px">
		<div align="center" style="background-image:url('https://th.bing.com/th/id/OIP.k0yFca2kcjqCYDZCnWMjWQHaDo?w=279&h=171&c=7&o=5&pid=1.7');padding-top:65px;width:500px;height:200px;background-size:cover;border:2px solid black;background-repeat:no-repeat;">
			<form action="pharmacistdashboard">
				LoginId :
				<input type="text" name="email" /><br><br>
				Password:
				<input type="password" name="password"/><br><br>
				<input type="submit" value="Login"/>
			</form>
		</div>
	</div>
	</div>
</body>
</body>
</html>