<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<style>
    .banner_div{
        background-image: url('https://us.123rf.com/450wm/asep17/asep171812/asep17181200091/114008520-stock-vector-abstract-background-health-care-and-science-icon-pattern-medical-innovation-concept-vector-illustrat.jpg?ver=6');
        width: 100%;
        height: 100%;
        position:absolute;
        background-size:cover;
        background-repeat:no-repeat;  
}
a:hover {color: black;}
</style>
<link href="<c:url value="/WebContent/WEB-INF/CSS/loginpage.css" />" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body >

<div  class="banner_div">
<h1 align="center">E-Health System</h1><hr>
   <div  align="center" style = " margin-top:10% ">
   
     <img style="border-radius:100%;width: 120px;" src="https://www.bing.com/th?id=OIP.2AzUrnmkCl9kN9gGCXFaSQHaHa&w=100&h=106&c=8&rs=1&qlt=90&pid=3.1&rm=2">
     <a href="loginform">Login as Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
     <img style="border-radius:100%;width: 125px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6IJatbiSiTCb-VVBeYqLDM0dXMWtB5HeIIA&usqp=CAU">
     <a href="doctorlogin">Login as Doctor</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
     <img style="border-radius:100%;width: 120px;" src="https://th.bing.com/th?q=Patient+Symbol&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-IN&adlt=moderate&t=1&mw=247">
     <a href="patientlogin">Login as Patient</a>&nbsp;&nbsp;
     
     <img style="border-radius:100%;width: 120px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2TF-q29qJzMmL1S5GMCNBBXxm7_qULGX1Uw&usqp=CAU">
     <a href="pharmlogin">Login as Pharmacist</a>&nbsp;&nbsp;
     
     <img style="border-radius:100%;width: 125px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0RwobI6GfNc_9uc11VgnfzJp4OhYq1YPb-w&usqp=CAU">
     <a href="pathlogin">Login as Pathologist</a>&nbsp;&nbsp;
   </div>
   
   </div>
</body>
</html>