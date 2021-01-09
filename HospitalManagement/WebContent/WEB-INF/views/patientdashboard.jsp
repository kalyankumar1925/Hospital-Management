<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient View</title>
<style>
   body{
        background-image: url('https://image.freepik.com/free-photo/flat-lay-with-doctor-desk-table-with-stethoscope-notebook-office-supplies-copy-space_120794-403.jpg');
        width: 100%;
        height: 100%;
        position:absolute;
         background-size:cover;
       
        background-repeat:no-repeat;
       
    }
     button
    {
    width:100px;
    height:100px;
    border-radius:50%;
    color:white;
    background-color: black;
    }
    button:hover{
    background-color:blue;
    }
</style>
</head>
<body>

<h1 align="center">Patient Dashboard</h1><hr>
	<h2 align="center"><i>Welcome back ${message} !!</i></h2><br>
	<div align="center" style="display:flex;padding-left:660px;padding-top:70px;">
		<a href="appointmentform"><button>Book Appointment</button></a><br/></br>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="appointmenthistory"><button>Appointment History</button></a><br/></br>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="testhistory"><button>Test History</button></a><br/></br></br>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href=""><button>Home</button></a>
	</div>
	
</body>
</html>