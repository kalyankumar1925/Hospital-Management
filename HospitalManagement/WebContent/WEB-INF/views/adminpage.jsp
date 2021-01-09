<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
  body{
        background-image: url('https://barusahib.org/wp-content/uploads/layerslider/home-page-slider/Backround.jpg');
        width: 100%;
        height: 100%;
        position:absolute;
         background-size:cover;
         padding-top:55px;
        background-repeat:no-repeat;
       }
   button{
    background-color: white;
    border-radius: 5px;
    padding:10px 25px;
     }
  button:hover{
  	background-color: aqua;
  	}
    a:hover{
    color:black;
    }
   a{
    color:blue;
    text-decoration:none;
    }
  table{
  border-spacing:20px;
  } 
  td{
  padding:30px;
  }
</style>
<meta charset="ISO-8859-1">
<title>Administrator View</title>
</head>
<body>
<h1 align="center">Welcome to E-Health Care</h1>
<table style="padding-left:420px;padding-top:10px;">
	<td>
		<img style="border-radius:100%;width: 120px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6IJatbiSiTCb-VVBeYqLDM0dXMWtB5HeIIA&usqp=CAU"><br>
		<a href="index"><button><b>Doctor Details</b></button></a>&nbsp;&nbsp;&nbsp;
	</td>
	<td>
		 <img style="border-radius:100%;width: 120px;" src="https://th.bing.com/th?q=Patient+Symbol&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-IN&adlt=moderate&t=1&mw=247"><br>
	   	<a href="patientlist"><button><b>Patient Details</b></button></a>&nbsp;&nbsp;&nbsp;&nbsp;
	</td>
	<td>
		<img style="border-radius:100%;width: 125px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0RwobI6GfNc_9uc11VgnfzJp4OhYq1YPb-w&usqp=CAU"><br>
		<a href="viewlabtests"><button><b>Pathologist Details</b></button></a>&nbsp;&nbsp;&nbsp;&nbsp;
	</td>
	<tr>
		<td>
			<img style="border-radius:100%;width: 120px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2TF-q29qJzMmL1S5GMCNBBXxm7_qULGX1Uw&usqp=CAU"><br>
			<a href="viewmedicines"><button><b>Pharmacist Details</b></button></a>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
		<td>	
			<img style="border-radius:100%;width: 120px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp_nMzfit_6bJgr7SDQXldp6-pW7-KN-Lr6w&usqp=CAU"><br>
			<a href="appointmentlist"><button><b>Appointment Details</b></button></a>&nbsp;
		</td>
	</tr>
 
</table>	
</body>
</html>