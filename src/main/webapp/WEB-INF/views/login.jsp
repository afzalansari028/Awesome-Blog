<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

<style><%@include file="/WEB-INF/css/login.css"%></style> 

</head>
<body>

<div class="container">
    <div class="title">Login !!</div>
    <h5 style="color:#ff9999;text-align:center;">${message}</h5>
    <form action="do_login" method="GET">
        <div class="user-details">
            <div class="input-box">
                <span class="details">User Email</span><br>
                <input type="text" name="username" id="email" placeholder="Enter your email" required/>
             </div>
            <div class="input-box">
                <span class="details">Password</span><br>
                <input type="password" name="password" id="pass" placeholder="Enter your password" required/>
             </div>
        </div> 
       <div class="user-role">
                <span>User role:</span>
            <select id="role" name="role">                
                <option class="option" value="User" name="user" >User</option>
                <option class="option" value="Admin" name="admin">Admin</option>
            </select>
        </div>

        <div class="button">
           <input type="submit" name="login" value="Login")">
        </div>

        <div class="forgot">
            <span><a id="f" href="forgot">Forgot password ?</a></span>
            <span><a id="s" href="register">SignUp</a></span>
        </div>
   </form>   
  </div> 
  
</body>
</html>