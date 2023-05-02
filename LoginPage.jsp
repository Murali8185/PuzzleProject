<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="LoginPage.css" />
     <script type="text/javascript" src="LoginPage.js"></script>
</head>

<body>
<div class="login-box" style="width:550px;position:relative;top:350px">
<form action="LoginPageDB.jsp" method="get">
    <h2>Login</h2>  
      <div class="user-box" >
        <label for="uname" style="color:azure"><b>Username:</b></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    	<input type="text" style="width:250px" placeholder="Username" name="uname" id="uname">
    	<span id="uerror"></span><br>
      </div>
      <div class="user-box">
        <label for="pass" style="color:azure"><b>Password:</b></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    	<input type="text" style="width:250px" placeholder="Password" name="pass" id="pass">
    	<span id="perror"></span><br>
      </div>
    <button onclick="validate(event)">Login</button>
      
    </form>
  </div>
  
</body>

</html>
