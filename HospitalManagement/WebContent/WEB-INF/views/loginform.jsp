<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html>
<html>
<head>

<style>
    .banner_div{
        background-image: url('data:image/jpeg;base64,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');
        width: 100%;
        height: 100%;
        position:absolute;
         background-size:cover;
        background-repeat:no-repeat;
    }
 
</style>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>
<div class="banner_div">
	<h1 align="center">Login For Admin</h1>
	<div align="center"  style="padding-top:5px">
		<div align="center" style="background-image:url('https://th.bing.com/th/id/OIP.k0yFca2kcjqCYDZCnWMjWQHaDo?w=279&h=171&c=7&o=5&pid=1.7');padding-top:65px;width:500px;height:200px;background-size:cover;border:2px solid black;background-repeat:no-repeat;">
			<form action="adminpage">
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
</html>