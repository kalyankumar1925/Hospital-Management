<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor View</title>
<style>
    .banner_div{
        background-image: url('https://image.freepik.com/free-photo/flat-lay-with-doctor-desk-table-with-stethoscope-notebook-office-supplies-copy-space_120794-403.jpg');
        width: 100%;
        height: 100%;
        position:absolute;
         background-size:cover;
        background-repeat:no-repeat;
       
    }
</style>
</head>
<body>
<div class="banner_div">
<h1 align="center">Doctor Dashboard</h1><hr>
	<h2 align="center">Welcome back ${message}</h2><br>
	<div align="center">
		<a href=""><button>Home</button></a><br/></br>
		<a href="viewappointment"><button> View Appointments</button></a><br/></br>
		<a href="doctorpatientlist"><button>View PatientRecords</button></a><br/></br>
		
	</div>
	</div>
</body>
</html>