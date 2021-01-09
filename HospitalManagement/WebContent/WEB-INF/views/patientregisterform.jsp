<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Form</title>
<style>
.banner_div{
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT71Fa27KUwHE0Dtz0Hd2ExH-hViba5rY3NA&usqp=CAU');
        width: 100%;
        height: 100%;
        position:absolute;
         background-size:cover;
     
        background-repeat:no-repeat;
       }
* {box-sizing: border-box}
.container {
  padding: 16px;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

a {
  color: dodgerblue;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>
	
    <div class="banner_div">
     <form action="registeruser" method="post" modelAttribute="register">
  		<div class="container">
    		<h1>Register</h1>
    		<p>Please fill in this form to create an account.</p>
    		<hr>
     			<label for="username"><b>User Name</b></label>
    			<input type="text" placeholder="Enter Name" name="username" id="username" required>
    

   				 <label for="email"><b>Email</b></label>
   				 <input type="text" placeholder="Enter Email" name="email" id="email" required>

   				 <label for="password"><b>Password</b></label>
   				 <input type="password" placeholder="Enter Password" name="password" id="password" required>

   				 <label for="re_password"><b>Repeat Password</b></label>
    			 <input type="password" placeholder="Repeat Password" name="re_password" id="re_password" required>
    
     			<label for="mobile"><b>Mobile</b></label>
    			<input type="text" placeholder="Enter mobile" name="mobile" id="mobile" required>
    
     			<label for="address"><b>Address</b></label>
   				<input type="text" placeholder="Enter address" name="address" id="address" required>
    		<hr>
   			 <button onclick="myalert()" type="submit" class="registerbtn">Register</button>
		</div>
	</form>
  </div>
  <script> 
        function myalert() { 
            alert("Registered Successfully!!"); 
        } 
    </script>
</body>
</html>