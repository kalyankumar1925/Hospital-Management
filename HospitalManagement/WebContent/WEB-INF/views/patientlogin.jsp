<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
    .banner_div{
        background-image: url('https://thumbs.dreamstime.com/z/healthcare-medical-concept-medicine-doctor-stethoscope-hand-patients-come-to-hospital-background-179931139.jpg');
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
<h1 align="center">E-Health System</h1><hr>
<div style="padding-top:80px">
	<h1 align="center">Login For Patient</h1>
	<div align="center"  >
			<form action="patientdashboard">
				LoginId :
				<input type="text" name="email"/><br><br>
				Password:
				<input type="password" name="password"/><br><br>
				<input type="submit" value="Login"/>
			</form>
		</div>
	</div>
	</div>
</body>
</html>